module Bingo where


import String exposing (toUpper, repeat, trimRight)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)


import StartApp.Simple as StartApp


-- MODEL


-- The full state of our app.


type alias Model =
    { entries : List Entry,
      phraseInput : String,
      pointsInput : String,
      nextID : Int
    }




type alias Entry =
    { phrase: String,
      points: Int,
      wasSpoken: Bool,
      id: Int
    }




newEntry : String -> Int -> Int -> Entry
newEntry phrase points id =
    { phrase = phrase,
      points = points,
      wasSpoken = False,
      id = id
    }




initialModel : Model
initialModel =
    { entries =
        [ newEntry "Doing Agile" 200 2,
          newEntry "In The Cloud" 300 3,
          newEntry "Future-Proof" 100 1,
          newEntry "Rock-Star Ninja" 400 4
        ],
        phraseInput = "",
        pointsInput = "",
        nextID = 5
    }


isAddInvalid : Model -> Bool
isAddInvalid model =
 String.isEmpty model.phraseInput || String.isEmpty model.pointsInput


-- UPDATE


-- A description of the kinds of actions that can be performed on the model of
-- our application.


type Action
  = NoOp
  | Sort
  | Mark Int
  | Delete Int
  | UpdatePhraseInput String
  | UpdatePointsInput String
  | Add




update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model


    Sort ->
      { model | entries = List.sortBy .points model.entries }


    Delete id ->
      let
        remainingEntries = List.filter (\e -> e.id /= id) model.entries
      in
        { model | entries = remainingEntries }


    Mark id ->
        let
          updateEntry e =
            if e.id == id then
              { e | wasSpoken = (not e.wasSpoken) }
            else
              e
        in
          { model | entries = List.map updateEntry model.entries }


    UpdatePhraseInput content ->
        { model | phraseInput = content }


    UpdatePointsInput content ->
        { model | pointsInput = content }


    Add ->
      let
        entryToAdd =
          newEntry model.phraseInput (parseInt model.pointsInput) model.nextID
        --isInvalid model =
        --  String.isEmpty model.phraseInput || String.isEmpty model.pointsInput
      in
        if isAddInvalid model
        then model
        else
          { model |
              phraseInput = "",
              pointsInput = "",
              entries = entryToAdd :: model.entries,
              nextID = model.nextID + 1
          }




-- VIEW


view : Address Action -> Model -> Html
view address model =
  div
    [ id "container" ]
    [ pageHeader
    , entryForm address model
    , entryList address model.entries
    , button [ class "sort"
             , onClick address Sort ] [ text "Sort" ]
    , pageFooter
    ]




title : String -> Int -> Html
title message times =
  message ++ " "
     |> toUpper
     |> repeat times
     |> trimRight
     |> text




pageHeader : Html
pageHeader =
  h1 [ ] [ title "Bingo!" 3 ]




pageFooter : Html
pageFooter =
  footer
    [ ]
    [ a [ href "https://pragmaticstudio.com" ] [ text "The Pragmatic Studio" ] ]




totalPoints : List Entry -> Int
totalPoints entries =
  let
    spokenEntries = List.filter .wasSpoken entries
  in
    List.sum (List.map .points spokenEntries)




totalItem: Int -> Html
totalItem total =
  li
    [ class "total" ]
    [ span [ class "label" ] [ text "Total" ],
      span [ class "points" ] [ text (toString total) ]
    ]




entryItem : Address Action -> Entry -> Html
entryItem address entry =
  li
    [ classList [ ("highlight", entry.wasSpoken) ],
      onClick address (Mark entry.id)
    ]
    [ span [ class "phrase" ] [ text entry.phrase ],
      span [ class "points" ] [ text (toString entry.points) ],
      button [ class "delete", onClick address (Delete entry.id) ] []
    ]




entryList : Address Action -> List Entry -> Html
entryList address entries =
  let
    entryItems = List.map (entryItem address) entries
    items = entryItems ++ [ totalItem (totalPoints entries) ]
  in
    ul [ ] items




entryForm : Address Action -> Model -> Html
entryForm address model =
  div []
    [ input
        [ type' "text",
          placeholder "Phrase",
          value model.phraseInput,
          name "phrase",
          autofocus True,
          onInput address UpdatePhraseInput
        ]
        [],
      input
        [ type' "number",
          placeholder "Points",
          value model.pointsInput,
          name "points",
          onInput address UpdatePointsInput
        ]
        [],
      button [ class "add"
             , onClick address Add
             , disabled (isAddInvalid model)
             ] [ text "Add" ],
      h2
        []
        [ text (model.phraseInput ++ " " ++ model.pointsInput) ]
    ]




-- WIRE THE APP TOGETHER!


main: Signal Html
main =
  StartApp.start
    { model = initialModel,
      view = view,
     update = update
    }




onInput : Address a -> (String -> a) -> Attribute
onInput address f =
  on "input" targetValue (\v -> Signal.message address (f v))




parseInt : String -> Int
parseInt string =
  case String.toInt string of
    Ok value ->
      value
    Err error ->
      0
