### Model-View version of Search Engine

For the front end, this elm program builds on the code available at Feldman's sign-up project (read the full description [here](http://tech.noredink.com/post/129641182738/building-a-live-validated-signup-form-in-elm))  at https://github.com/rtfeldman/elm-signup-form 
![modelView](http://i.imgur.com/dNQ1eWj.png) 

### To Do 
  - add multi-threading 
  - add http access to both talk to a server (use `form`) Element
  - Access server with search results and/or crawl the web directly 
  - add local storage 
  - add `form` handling 
	  -  _My explanation: By using button inside a form, you make it so that when the button is clicked, a GET request is sent to some server. The address of that server you would specify in some attribute, like http://package.elm-lang.org/packages/evancz/elm-html/4.0.2/Html-Attributes#action, but you haven’t specified that attribute. So the request goes to some unknown/empty URI, or actually just to the current server, which at http://elm-lang.org/try results in the 404 you see, as it is not prepared to process your specific form request._
  

```elm

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import StartApp
import Effects exposing (..)

import Regex exposing (..)
import String 

-- MODEL

type alias Url      = String 
type alias Content  = String
type alias Wcontent = (Url, Content)

type alias Model = 
  { keyword: String
  , results: List Url
  , errors : {keyword: String, results: List Url}
  }

-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
    -- form  is ideal, after incorporating `onOptions`
    div [ id "signup-form"] 
        [ h1 [] [ text "Elm Search Engine" ]
        , label [ for "keyword" ] [ text "keyword: " ]
        , input
            [ id "keyword-field"
            , placeholder "enter keyword here"
            , type' "text"
            , value model.keyword
            , on "input" targetValue (Signal.message address << SET_KEYWORD)
            ]
            []
        , div[] [text " ------------"]

        , div [ class "validation-error" ] [ text model.errors.keyword ]
        --, button [ id "search-button", onClick address SEARCH ] [ text "Search"]
        , div [ class "search-results" ]
              [ text ("Results: " ++ (toString model.results)) ]
        , div [ class "validation-error" ] [ text (String.join "" model.errors.results) ]
        , div[ style [("text-align", "center")] ] [text " ------------"]
        , div[revStyle] [text (toString crawlOut) ]
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
        ( { model | keyword = str
                  , results = findl model.keyword crawlOut
                  , errors  = getErrors model
          }, Effects.none )

getErrors model =
    { keyword = 
        if model.keyword == "" then
            "Please enter a keyword!"
        else
            " "
    , results =
        if model.keyword == "" && model.results == [] then
          -- "Not implemented!"
          -- "Results: " ++ toString (findl model.keyword crawlOut )
          -- findl model.keyword crawlOut
          ["No match!"]
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

revStyle : Attribute
revStyle =
  style
    [ ("width", "100%")
    , ("height", "10px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    , ("color", "gray")
    ]


-- Search related code 

crawlOut: List Wcontent
crawlOut = 
  [ ("url1", "The life is to be lived to be transformed")
  , ("url2", "Monkeys can type a thousand words but translate?")
  , ("url3", "Junk and junk all over")
  , ("url4", "Transform. Brand You. How will you challenge life?")
  , ("url5", "Do, trans-form, live")
  , ("url6", "zebras and queens")
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
    if pattern /= "" && 
       String.contains (String.toLower pattern) wtext then 
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