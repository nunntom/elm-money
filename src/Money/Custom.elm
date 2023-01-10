module Money.Custom exposing
    ( Error(..)
    , Formatter
    , Money
    , add
    , convertAndSum
    , convertList
    , convertTo
    , divide
    , format
    , fromBigInt
    , fromFloatMajor
    , fromFloatMinor
    , fromInt
    , fromStringMajor
    , fromStringMinor
    , getCurrency
    , isNoMoney
    , multiply
    , negate
    , subtract
    , sum
    , toBigInt
    , toBigRational
    )

import BigInt exposing (BigInt)
import BigRational as BR exposing (BigRational)
import Dict exposing (Dict)
import Regex



-- TYPES


{-| The money type. All money is stored as a BigRational in the minor money amount.
Example: 1000 in GBP: £10.00, 5025 in USD: $50.25.
-}
type Money currency
    = Money currency BigRational



-- MAKE MONEY


{-| Make an instance of Money from an Int

    (fromInt GBP 100
        |> toString formatter
    )
        == "£1.00"

-}
fromInt : currency -> Int -> Money currency
fromInt curr i =
    Money curr (BR.fromInt i)


fromBigInt : currency -> BigInt -> Money currency
fromBigInt curr i =
    Money curr (BR.fromBigInt i)


{-| Make an instance of Money from a Float in the minor unit.

    (fromFloat USD 1000
        |> toString formatter
    )
        == "$10.00"

-}
fromFloatMinor : currency -> Float -> Money currency
fromFloatMinor curr amount =
    Money curr (BR.fromFloat amount)


{-| Make an instance of Money from a Float. This time use the major money amount.

    (fromFloat USD 100.5
        |> toString formatter
    )
        == "$100.50"

-}
fromFloatMajor : (currency -> Int) -> currency -> Float -> Money currency
fromFloatMajor toDecimalDigits curr amount =
    BR.fromFloat amount
        |> BR.mul (BR.fromInt <| 10 ^ toDecimalDigits curr)
        |> Money curr


fromStringMinor : currency -> String -> Maybe (Money currency)
fromStringMinor curr s =
    BR.fromFloatString s
        |> Maybe.map (Money curr)


fromStringMajor : (currency -> Int) -> currency -> String -> Maybe (Money currency)
fromStringMajor toDecimalDigits curr s =
    BR.fromFloatString s
        |> Maybe.map (BR.mul (BR.fromInt <| 10 ^ toDecimalDigits curr) >> Money curr)


toBigRational : Money currency -> BigRational
toBigRational (Money _ amount) =
    amount


toBigInt : Money currency -> BigInt
toBigInt (Money _ amount) =
    BR.round BR.ToEven amount


{-| What currency is this money?
-}
getCurrency : Money currency -> currency
getCurrency (Money curr _) =
    curr



-- MONEY MATH


{-| Attempt to add two monies. Will return an error if the currencies don't match.

    (add (fromInt USD 1000) (fromFloat USD 10.0)
        |> Result.map toString formatter
    )
        == Ok "$20.00"

-}
add : Money currency -> Money currency -> Result (Error currency) (Money currency)
add money1 money2 =
    math BR.add money1 money2


{-| Subtract two monies. Will return an error if the currencies don't match.

    (subtract (fromInt USD 100) (fromInt USD 1)
        |> Result.map toString formatter
    )
        == Ok "$0.99"

    (subtract (fromInt USD 100) (fromInt GBP 1)
        |> Result.map toString formatter
    )
        == Err (DiffCurrencies USD GBP)

-}
subtract : Money currency -> Money currency -> Result (Error currency) (Money currency)
subtract money1 money2 =
    math BR.sub money1 money2


{-| Multiply a money by a BigRational.

    (multiply 10 (fromInt GBP 1999)
        |> toString formatter
    )
        == "£199.90"

-}
multiply : BigRational -> Money currency -> Money currency
multiply by (Money curr amount) =
    BR.mul amount by
        |> Money curr


{-| Divide a money by a BigRational.

    (divide 2.5 (fromInt USD 50000)
        |> Result.map toString formatter
    )
        == Ok "$200.00"

    (divide 10 (fromInt GBP 1999)
        |> Result.map toString formatter
    )
        == Ok "£2.00"

-}
divide : BigRational -> Money currency -> Money currency
divide by (Money curr amount) =
    BR.div amount by
        |> Money curr


{-| Negate money

    (Money.negate (fromInt USD 1000)
        |> toString formatter
    )
        == "-$10.00"

    (Money.negate (fromInt USD -1000)
        |> toString formatter
    )
        == "$10.00"

-}
negate : Money currency -> Money currency
negate (Money curr amount) =
    BR.negate amount
        |> Money curr


{-| Sum a list of money. Must be all the same currency or an error will be returned.
You need to supply a currency to use in case the list is empty.

    (sum GBP
        [ fromInt GBP 1000
        , fromInt GBP 2500
        , fromInt GBP -500
        ]
        |> Result.map toString formatter
    )
        == Ok "£30.00"

    (sum USD [] |> Result.map toString formatter) == Ok "$0.00"

-}
sum : currency -> List (Money currency) -> Result (Error currency) (Money currency)
sum currency monies =
    List.foldl
        (\a s ->
            Result.andThen (add a) s
        )
        (fromInt currency 0 |> Ok)
        monies



-- FORMAT


type alias Formatter currency view =
    { currency : currency
    , thousands : List String
    , decimals : String
    , extraDecimals : String
    , negative : Bool
    }
    -> view


format : (currency -> Int) -> (currency -> Int) -> Formatter currency view -> Money currency -> view
format toDecimalDigits extraDecimals formatter (Money curr amount) =
    let
        split =
            BR.div (BR.abs amount) (10 ^ toDecimalDigits curr |> BR.fromInt)
                |> BR.toDecimalString (toDecimalDigits curr + extraDecimals curr)
                |> Regex.splitAtMost 2 (Regex.fromString "\\." |> Maybe.withDefault Regex.never)

        splitThousands =
            String.reverse
                >> Regex.find (Regex.fromString "\\d{1,3}" |> Maybe.withDefault Regex.never)
                >> List.map (.match >> String.reverse)
                >> List.reverse

        ( int, dec, extra ) =
            case split of
                [ i, d ] ->
                    ( i
                    , String.padRight (toDecimalDigits curr) '0' d |> String.left (toDecimalDigits curr)
                    , String.dropLeft (toDecimalDigits curr) d
                    )

                [ i ] ->
                    ( i, String.repeat (toDecimalDigits curr) "0", "" )

                _ ->
                    ( "0", String.repeat (toDecimalDigits curr) "0", "" )
    in
    formatter
        { thousands = splitThousands int
        , decimals = dec
        , extraDecimals = extra
        , currency = curr
        , negative = BR.lt amount zero
        }



-- CONVERT


type Rate
    = Rate BigRational


convertTo :
    (currency -> Int)
    -> (currency -> String)
    -> ExchangeRates
    -> currency
    -> Money currency
    -> Result (Error currency) (Money currency)
convertTo toDecimalDigits toCode rates toCurr (Money fromCurr amount) =
    if toCurr == fromCurr || amount == zero then
        Ok <| Money toCurr amount

    else
        getRate toCode toDecimalDigits rates fromCurr toCurr
            |> Result.map (\rate -> convert rate toCurr (Money fromCurr amount))


convertList :
    (currency -> Int)
    -> (currency -> String)
    -> ExchangeRates
    -> currency
    -> List (Money currency)
    -> Result (Error currency) (List (Money currency))
convertList toDecimalDigits toCode rates toCurr list =
    let
        resolve result carry =
            case ( result, carry ) of
                ( Ok money, Ok monies ) ->
                    Ok (money :: monies)

                ( Ok _, Err (MissingRates fromCurr currs) ) ->
                    Err (MissingRates fromCurr currs)

                ( Err (MissingRates fromCurr currs), Err (MissingRates fromCurr2 currs2) ) ->
                    (currs ++ (fromCurr2 :: currs2))
                        |> List.filter ((/=) fromCurr)
                        |> MissingRates fromCurr
                        |> Err

                ( _, Err err ) ->
                    Err err

                ( Err err, _ ) ->
                    Err err
    in
    list
        |> List.map (convertTo toDecimalDigits toCode rates toCurr)
        |> List.foldr resolve (Ok [])


convertAndSum :
    (currency -> Int)
    -> (currency -> String)
    -> ExchangeRates
    -> currency
    -> List (Money currency)
    -> Result (Error currency) (Money currency)
convertAndSum toDecimalDigits toCode rates toCurr rest =
    Result.andThen (sum toCurr)
        (convertList toDecimalDigits toCode rates toCurr rest)



-- CHECKS


isNoMoney : Money currency -> Bool
isNoMoney (Money _ amount) =
    amount == zero



-- PRIVATE HELPERS


math : (BigRational -> BigRational -> BigRational) -> Money currency -> Money currency -> Result (Error currency) (Money currency)
math f (Money curr1 amount1) (Money curr2 amount2) =
    if curr1 == curr2 then
        Ok <| Money curr1 (f amount1 amount2)

    else if amount1 == zero then
        Ok <| Money curr2 (f zero amount2)

    else if amount2 == zero then
        Ok <| Money curr1 (f amount1 zero)

    else
        Err <| DiffCurrencies curr1 curr2


convert : Rate -> currency -> Money currency -> Money currency
convert (Rate rate) toCurr (Money _ amount) =
    BR.mul amount rate
        |> Money toCurr


zero : BigRational
zero =
    BR.fromInt 0


getRate : (currency -> String) -> (currency -> Int) -> ExchangeRates -> currency -> currency -> Result (Error currency) Rate
getRate toCode toDecimalDigits rates fromCurr toCurr =
    case
        ( Dict.get (toCode fromCurr) rates |> Maybe.map BR.fromFloat
        , Dict.get (toCode toCurr) rates |> Maybe.map BR.fromFloat
        )
    of
        ( Just rateToBase, Just rateToCurr ) ->
            let
                decimalConvert =
                    (10 ^ (toDecimalDigits toCurr - toDecimalDigits fromCurr))
                        |> BR.fromInt
            in
            BR.div rateToCurr rateToBase
                |> BR.mul decimalConvert
                |> Rate
                |> Ok

        ( Just _, Nothing ) ->
            Err (MissingRates toCurr [])

        ( Nothing, Just _ ) ->
            Err (MissingRates fromCurr [])

        ( Nothing, Nothing ) ->
            Err (MissingRates fromCurr [ toCurr ])


type Error currency
    = DiffCurrencies currency currency
    | MissingRates currency (List currency)


type alias ExchangeRates =
    Dict String Float
