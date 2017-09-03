module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)


main =
    div []
        [ div []
            [ div [ class "header has-text-centered" ]
                [ h1 [ class "app-title" ] [ text "hashtagwars" ]
                ]
            ]
        , div [ class "main-screen" ]
            [ div
                [ class "columns" ]
                [ div [ class "column is-3 is-offset-3 has-text-centered" ]
                    [ h4 [] [ text "First Hashtag" ]
                    ]
                , div [ class "column is-3 has-text-centered" ]
                    [ h4 [] [ text "Second Hashtag" ]
                    ]
                ]
            , div [ class "has-text-centered" ]
                [ h4 [] [ text "Fight!" ]
                ]
            , div [ class "columns" ]
                [ div [ class "column is-6 is-offset-3 has-text-centered" ]
                    [ h4 [] [ text "Results!" ]
                    ]
                ]
            ]
        ]
