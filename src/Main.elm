module Main exposing (init, main, update)

import Browser
import Browser.Navigation as Nav
import Html exposing (Html, p, text)
import Url exposing (Url)


type alias Model =
    {}


type Msg
    = NoOp


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        , onUrlChange = always NoOp
        , onUrlRequest = always NoOp
        }


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url key =
    ( {}
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Browser.Document Msg
view _ =
    { title = "STUDIO KRAFT Építész műterem"
    , body = [ p [] [ text "Entry point" ] ]
    }
