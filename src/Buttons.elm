module Buttons exposing (main)

import Browser
import Html exposing (Html, button, div, span, text)
import Html.Events exposing (onClick)



-- Main


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment1
    | Decrement1
    | Reset
    | Increment10
    | Decrement10


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment1 ->
            model + 1

        Decrement1 ->
            model - 1

        Reset ->
            0

        Increment10 ->
            model + 10

        Decrement10 ->
            model - 10


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ button [ onClick Decrement10 ] [ text "-10" ]
            , button [ onClick Decrement1 ] [ text "-" ]
            , span [] [ text (String.fromInt model) ]
            , button [ onClick Increment1 ] [ text "+" ]
            , button [ onClick Increment10 ] [ text "+10" ]
            ]
        , div []
            [ button [ onClick Reset ] [ text "Reset" ]
            ]
        ]

