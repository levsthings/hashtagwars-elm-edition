module Main exposing (..)

import Html exposing (button, div, h1, h4, input, text)
import Html.Attributes exposing (class, placeholder, type_)


main =
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
                        [ class "input is-medium", placeholder "#hashtag", type_ "text" ]
                        []
                    ]
                , div [ class "column is-3 has-text-centered" ]
                    [ h4 [] [ text "Second Hashtag" ]
                    , input [ class "input is-medium", placeholder "#hashtag", type_ "text" ] []
                    ]
                ]
            , div [ class "has-text-centered" ]
                [ button [ class "htw-controls-button button is-medium" ] [ text "Fight!" ]
                ]
            , div [ class "columns" ]
                [ div [ class "column is-6 is-offset-3 has-text-centered" ]
                    []
                ]
            ]
        ]
