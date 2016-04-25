### Model-View version of Search Engine

For the front end, this elm program builds on the code available at Feldman's sign-up project (read the full description [here](http://tech.noredink.com/post/129641182738/building-a-live-validated-signup-form-in-elm))  at https://github.com/rtfeldman/elm-signup-form 
![modelView](http://i.imgur.com/nMI67MM.png) 

```elm

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (id, type', for, value, class, placeholder)
import StartApp
import Effects exposing (..)

import Regex exposing (..)
import String 

-- MODEL

type alias Url   = String 

type alias Model = 
  { keyword: String
  , results: List Url
  , errors : {keyword: String, results: List Url}
  }


-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
    div
        [ id "signup-form" ]
        [ h1 [] [ text "EML Search Engine" ]
        , label [ for "keyword" ] [ text "keyword: " ]
        , input
            [ id "keyword-field"
            , placeholder "enter keyword here"
            , type' "text"
            , value model.keyword
            , on "input" targetValue (Signal.message address << SET_KEYWORD)
            ]
            []
        , div [ class "validation-error" ] [ text model.errors.keyword ]
        , button [ id "search-button", onClick address SEARCH ] [ text "Search"]
        , div [ class "search-results" ]
              [ text ("Results: " ++ (toString model.errors.results)) ]
  
        ]

-- UPDATE 

type Action 
  = SEARCH 
  | SET_KEYWORD String

update : Action -> Model -> (Model, Effects Action)
update action model =
    case action of 
      SEARCH -> 
        ( { model | errors = getErrors model }, Effects.none )
      SET_KEYWORD str -> 
        ( { model | keyword = str}, Effects.none )

getErrors model =
    { keyword = 
        if model.keyword == "" then
            "Please enter a keyword!"
        else
            ""
    , results =
        if model.keyword /= "" then
          -- "Not implemented!"
          -- "Results: " ++ toString (findl model.keyword crawlOut )
          findl model.keyword crawlOut
        else
          []
    }


-- Wire up the Application so it can be launched 

initialErrors =
    { keyword = "", results = [] }

initialModel =
    { keyword = "", results = [], errors = initialErrors }

app =
    StartApp.start
        { init = (initialModel, Effects.none)
        , update = update
        , view = view
        , inputs = []
        }


main =
    app.html
    
  
{---------------------------
Search related code and corresponding model
----------------------------}

type alias Content   = String
type alias Wcontent  = (Url, Content)


crawlOut: List Wcontent
crawlOut = 
  [ 
    ("url1", "The life is to be lived to be transformed"),
    ("url2", "Monkeys can type a thousand words but translate?"), 
    ("url3", "Junk and junk all over"),
    ("url4", "Transform. Brand You. How will you challenge life?"),
    ("url5", "Do, trans-form, live")
  ]

devowel = replace All (regex "[aeiou]") (\_ -> "")
depunct = replace All (regex "[^a-zA-Z]") (\_ -> "")


find: String -> Content -> Bool
find pattern wtext = 
  let 
    wtext = wtext
            |> String.trim 
            |> String.toLower
            |> depunct
           
  in
    if String.contains (String.toLower pattern) wtext then 
      True
    else 
      False


findt: String -> Wcontent -> Maybe Url
findt pattern wc = 
  let 
    (url, content) = wc
  in
    if find pattern content then
      Just url
    else
      Nothing
      
findl: String -> List Wcontent -> List Url
findl pattern listres =
  listres
      |> List.filterMap (findt pattern)

 
```