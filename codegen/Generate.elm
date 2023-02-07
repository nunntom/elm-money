module Generate exposing (main)

{-| -}

import Elm exposing (Declaration, Expression)
import Elm.Annotation as Annotation
import Elm.Case
import Gen.CodeGen.Generate as Generate
import Json.Decode as Decode exposing (Decoder)
import List.Extra


main : Program Decode.Value () ()
main =
    Generate.fromJson (Decode.list currencyDecoder) (\currencies -> [ file currencies ])


type alias Currency =
    { name : String
    , namePlural : String
    , code : String
    , symbol : String
    , symbolNative : String
    , decimalDigits : Int
    , rounding : Float
    }


currencyDecoder : Decoder Currency
currencyDecoder =
    Decode.map7 Currency
        (Decode.field "name" Decode.string)
        (Decode.field "namePlural" Decode.string)
        (Decode.field "code" Decode.string)
        (Decode.field "symbol" Decode.string)
        (Decode.field "symbolNative" Decode.string)
        (Decode.field "decimalDigits" Decode.int)
        (Decode.field "rounding" Decode.float)


groups : List String
groups =
    [ "CURRENCY TYPE"
    , "ALL"
    , "CREATING"
    ]


file : List Currency -> Elm.File
file currencies =
    Elm.fileWith [ "Currency" ]
        { docs =
            List.sortBy (.group >> Maybe.andThen (\g -> List.Extra.findIndex ((==) g) groups) >> Maybe.withDefault 99)
                >> List.map Elm.docs
        , aliases = []
        }
        [ List.map (.code >> Elm.variant) currencies
            |> Elm.customType "Currency"
            |> Elm.exposeWith { exposeConstructor = True, group = Just "CURRENCY TYPE" }
            |> Elm.withDocumentation "The main Currency type"
        , Elm.exposeWith { exposeConstructor = False, group = Just "ALL" }
            (Elm.declaration "all" <|
                Elm.withType (Annotation.list (Annotation.named [] "Currency")) <|
                    Elm.list (List.map (.code >> Elm.val) currencies)
            )
            |> Elm.withDocumentation "A list of all the currencies"
        , Elm.exposeWith { exposeConstructor = False, group = Just "CREATE" } (fromCode currencies)
            |> Elm.withDocumentation "Try to create a Currency from an ISO 4217 three letter code"
        , to "toCode" (.code >> Elm.string) currencies
            |> Elm.withDocumentation "Get the ISO 4217 three letter code from a Currency"
        , to "toName" (.name >> Elm.string) currencies
            |> Elm.withDocumentation "Get the currency name"
        , to "toNamePlural" (.namePlural >> Elm.string) currencies
            |> Elm.withDocumentation "Get the currency plural name"
        , to "toSymbolNative" (.symbolNative >> Elm.string) currencies
            |> Elm.withDocumentation "Get the currency native symbol"
        , to "toDecimalDigits" (.decimalDigits >> Elm.int) currencies
            |> Elm.withDocumentation "Get the number of decimal digits"
        ]


fromCode : List Currency -> Declaration
fromCode currencies =
    Elm.declaration "fromCode" <|
        Elm.fn ( "code", Just Annotation.string )
            (\exp ->
                Elm.Case.string exp
                    { cases = List.map (\c -> ( c.code, Elm.just (Elm.val c.code) )) currencies
                    , otherwise = Elm.nothing
                    }
                    |> Elm.withType (Annotation.maybe (Annotation.named [] "Currency"))
            )


to : String -> (Currency -> Expression) -> List Currency -> Declaration
to name toExp currencies =
    Elm.exposeWith
        { exposeConstructor = False
        , group = Just "TRANSFORMATIONS"
        }
    <|
        Elm.declaration name <|
            Elm.fn ( "Currency", Just (Annotation.named [] "Currency") )
                (\exp ->
                    Elm.Case.custom exp
                        (Annotation.var "Currency")
                    <|
                        List.map
                            (\c ->
                                Elm.Case.branch0 c.code
                                    (toExp c)
                            )
                            currencies
                )
