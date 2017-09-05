module Main exposing (..)

import Html exposing (Html, button, div, h1, h4, input, text)
import Html.Attributes exposing (class, placeholder, type_)
import Html.Events exposing (onClick, onInput)


main =
    Html.program
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }



-- model


type alias Model =
    { firstHashtag : String
    , secondHashtag : String
    }


init : ( Model, Cmd Msg )
init =
    ( Model "" "", Cmd.none )



-- msg


type Msg
    = FirstHashtag String
    | SecondHashtag String
    | SetHashtags



-- updates


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        FirstHashtag text ->
            ( { model | firstHashtag = text }, Cmd.none )

        SecondHashtag text ->
            ( { model | secondHashtag = text }, Cmd.none )

        SetHashtags ->
            ( model, Cmd.none )



-- subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- view


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ div [ class "htw-header has-text-centered" ]
                [ h1 [ class "htw-app-title" ] [ text "hashtagwars" ]
                ]
            ]
        , div [ class "htw-main-screen" ]
            [ div
                [ class "columns" ]
                [ div [ class "column is-3 is-offset-3 has-text-centered" ]
                    [ h4 []
                        [ text "First Hashtag" ]
                    , input
                        [ class "input is-medium", placeholder "#hashtag", type_ "text", onInput FirstHashtag ]
                        []
                    ]
                , div [ class "column is-3 has-text-centered" ]
                    [ h4 [] [ text "Second Hashtag" ]
                    , input [ class "input is-medium", placeholder "#hashtag", type_ "text", onInput SecondHashtag ]
                        []
                    ]
                ]
            , div [ class "has-text-centered" ]
                [ button [ class "htw-controls-button button is-medium", onClick SetHashtags ] [ text "Fight!" ]
                ]
            , div [ class "columns" ]
                [ div [ class "column is-6 is-offset-3 has-text-centered" ]
                    []
                ]
            ]
        ]
