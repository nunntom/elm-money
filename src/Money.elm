module Money exposing
    ( Formatter
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
import BigRational exposing (BigRational)
import Currency exposing (Currency)
import Dict exposing (Dict)
import Money.Custom as Custom exposing (Error)



-- TYPES


{-| The money type. All money is stored as a BigRational in the minor money amount.
Example: 1000 in GBP: £10.00, 5025 in USD: $50.25.
-}
type alias Money =
    Custom.Money Currency



-- MAKE MONEY


{-| Make an instance of Money from an Int

    (fromInt GBP 100
        |> toString formatter
    )
        == "£1.00"

-}
fromInt : Currency -> Int -> Money
fromInt =
    Custom.fromInt


fromBigInt : Currency -> BigInt -> Money
fromBigInt =
    Custom.fromBigInt


{-| Make an instance of Money from a Float in the minor unit.

    (fromFloat USD 1000
        |> toString formatter
    )
        == "$10.00"

-}
fromFloatMinor : Currency -> Float -> Money
fromFloatMinor =
    Custom.fromFloatMinor


{-| Make an instance of Money from a Float. This time use the major money amount.

    (fromFloat USD 100.5
        |> toString formatter
    )
        == "$100.50"

-}
fromFloatMajor : Currency -> Float -> Money
fromFloatMajor =
    Custom.fromFloatMajor Currency.toDecimalDigits


toBigRational : Money -> BigRational
toBigRational =
    Custom.toBigRational


toBigInt : Money -> BigInt
toBigInt =
    Custom.toBigInt


{-| What Currency is this money?
-}
getCurrency : Money -> Currency
getCurrency =
    Custom.getCurrency



-- MONEY MATH


{-| Attempt to add two monies. Will return an error if the currencies don't match.

    (add (fromInt USD 1000) (fromFloat USD 10.0)
        |> Result.map toString formatter
    )
        == Ok "$20.00"

-}
add : Money -> Money -> Result (Error Currency) Money
add =
    Custom.add


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
subtract : Money -> Money -> Result (Error Currency) Money
subtract =
    Custom.subtract


{-| Multiply a money by a BigRational.

    (multiply 10 (fromInt GBP 1999)
        |> toString formatter
    )
        == "£199.90"

-}
multiply : BigRational -> Money -> Money
multiply by =
    Custom.multiply by


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
divide : BigRational -> Money -> Money
divide by =
    Custom.divide by


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
negate : Money -> Money
negate =
    Custom.negate


{-| Sum a list of money. Must be all the same Currency or an error will be returned.
You need to supply a Currency to use in case the list is empty.

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
sum : Currency -> List Money -> Result (Error Currency) Money
sum =
    Custom.sum



-- FORMAT


type alias Formatter view =
    Custom.Formatter Currency view


format : (Currency -> Int) -> Formatter view -> Money -> view
format extraDecimals =
    Custom.format Currency.toDecimalDigits extraDecimals



-- CONVERT


convertTo :
    ExchangeRates
    -> Currency
    -> Money
    -> Result (Error Currency) Money
convertTo =
    Custom.convertTo Currency.toDecimalDigits Currency.toCode


convertList :
    ExchangeRates
    -> Currency
    -> List Money
    -> Result (Error Currency) (List Money)
convertList =
    Custom.convertList Currency.toDecimalDigits Currency.toCode


convertAndSum :
    ExchangeRates
    -> Currency
    -> List Money
    -> Result (Error Currency) Money
convertAndSum =
    Custom.convertAndSum Currency.toDecimalDigits Currency.toCode


type alias ExchangeRates =
    Dict String Float



-- CHECKS


isNoMoney : Money -> Bool
isNoMoney =
    Custom.isNoMoney
