module Main exposing (main)

import Browser
import Html exposing (Html)
import Money
import Currency exposing (Currency(..))

main =
  Browser.sandbox { init = {}, update = \_ _ -> {}, view = \_ -> view }

view : Html msg 
view =
    let
        _ = Debug.log "Money" (Money.fromInt GBP 100)
    in 
    Html.text "Yo"