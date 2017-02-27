-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/user_input/buttons.html

module Main exposing (..)
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)


main =
  beginnerProgram { model = "", view = view, update = update }


view model =
  div []
    [ h1 [] [ text model ]
    , button [ onClick Decrement, style [("padding", "2em")] ] [ text "- 1 💖" ]
    , button [ onClick Increment, style [("padding", "2em") ]] [ text "+ 1 💖" ]
    , button [ onClick Brokenheart, style [("padding", "2em") ]] [ text "💔" ]
  
    ]


type Msg = Increment | Decrement | Brokenheart

update : Msg -> String -> String
update msg lovetap =
  case msg of
    Increment ->
      if lovetap == "💔" then
        "💖"
        else lovetap ++ "💖"

    Decrement ->
       String.dropLeft 2 lovetap 
       
    Brokenheart -> 
       "💔"
       
