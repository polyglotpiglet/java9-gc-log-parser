module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import SharedStyles exposing (..)


{ id, class, classList } =
    homepageNamespace

main = Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model =
 {  pathToLogFile : String
  , magicNumber: Int
 }


model : Model
model =
  Model "" 0


-- UPDATE

type Msg = PathToLogFile String | Increment | SubmitLogFile

update : Msg -> Model -> Model
update msg model =
  case msg of
    PathToLogFile pathToLogFile ->
      { model | pathToLogFile = pathToLogFile }

    Increment ->
       { model | magicNumber = model.magicNumber + 1 }

    SubmitLogFile ->
        { model | magicNumber = model.magicNumber}


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ input [ id PathToLogFileInput, type_ "text", placeholder "Path to log file", onInput PathToLogFile] []
    , button [ id SubmitButton, onClick SubmitLogFile ] [ text "Submit" ]
    , div [] [ text (toString model) ]
    ]

