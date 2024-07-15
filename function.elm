-- function.elm
module Main exposing (..)

import Browser
import Html exposing (Html, div, text, input, button)
import Html.Events exposing (onClick, onInput)
import String exposing (toInt)

myFunction : Int -> Int
myFunction param =
    let
        x = param + 10
        x = if x > 15 then x - 5 else x + 5
        x = x + List.sum [0..2]
    in
    x

type Msg
    = Input String
    | Calculate

type alias Model =
    { input : String
    , result : String
    }

init : Model
init =
    { input = ""
    , result = ""
    }

update : Msg -> Model -> Model
update msg model =
    case msg of
        Input value ->
            { model | input = value }
        Calculate ->
            case toInt model.input of
                Just param ->
                    let
                        result = myFunction param
                    in
                    { model | result = String.fromInt result }
                Nothing ->
                    { model | result = "Invalid input" }

view : Model -> Html Msg
view model =
    div []
        [ input [ onInput Input ] []
        , button [ onClick Calculate ] [ text "Calculate" ]
        , div [] [ text model.result ]
        ]

main =
    Browser.sandbox { init = init, update = update, view = view }
