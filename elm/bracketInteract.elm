import Html exposing (..)
import Html.Attributes exposing (..)
--import Html.Events exposing (onClick, targetValue)
import Signal exposing (Address)
import StartApp.Simple as StartApp
import String exposing (..)

-- import BingoUtils as Utils 

import String exposing (toInt)
import Html exposing (Attribute)
import Html.Events exposing (on, targetValue)
import Signal exposing (Address)


onInput : Address a -> (String -> a) -> Attribute
onInput address f =
  on "input" targetValue (\v -> Signal.message address (f v))




-- MODEL

type alias BPair = {
  opener: Char, 
  closer: Char,
  isEnabled: Bool,
  id: Int
}

type alias BMap = List BPair

type alias Model =
  {
    expression: String, 
    bmap: BMap 
  }

 
newPair : Char -> Char -> BPair
newPair op cl =
  { opener = op,
    closer = cl,
    isEnabled = True,
    id = 0
  }



type Action
  = NoOp
  | UpdateExpression String


update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model
  
    UpdateExpression contents ->
        { model | expression = contents }


        
---- Validator Related 

validateString: String -> List BPair -> Bool 
validateString s bmap = 
  let 
    res = validate s empty bmap 
    _= Debug.watch "Result " (res, s)
  in 
    res


type alias SStack = String

empty : SStack
empty =
  ""

push : String -> SStack -> SStack
push tok stacks = 
  tok ++ stacks


pop : SStack -> Maybe (Char, SStack)
pop stacks = 
  String.uncons stacks


peek: SStack -> String
peek stack = 
  String.slice 0 1 stack 


isEmpty: SStack -> Bool 
isEmpty s = 
  if String.isEmpty s then
    True
  else
    False 

pushC: Char -> SStack -> SStack
pushC c s = 
  push (String.fromChar c) s


isOpenr: Char -> List BPair -> Bool 
isOpenr o bmap = 
  List.member o (List.map .opener bmap)


isClosr: Char -> List BPair -> Bool 
isClosr c bmap = 
  List.member c (List.map .closer bmap)


matchOpenr: Char -> BPair -> Maybe Char
matchOpenr o bp = 
  if bp.opener == o then 
    Just bp.closer 
  else 
    Nothing 

getClosr: Char -> List BPair -> Maybe Char 
getClosr o bm =
  
  List.head (List.filterMap (matchOpenr o) bm )


validate: String -> SStack -> BMap -> Bool
validate expr stacks bMap =
  case (pop expr) of 
    Nothing -> 
      isEmpty stacks

    Just (x, restExpr) -> 
      case (getClosr x bMap) of 
        Just (c) -> 
          validate restExpr (pushC c stacks) bMap
        Nothing -> 
          case (isClosr x bMap) of 
            True -> 
              case (pop stacks) of 
                Just (t, restOfStack) -> 
                  if t == x  then 
                    validate restExpr restOfStack bMap
                  else 
                    False 
                Nothing ->
                  False 
            False ->
              validate restExpr stacks bMap 
    

      
entryForm : Address Action -> Model -> Html
entryForm address model =
  div [ ]
    [ input
        [ type' "text",
          placeholder "() () {}{{}}",
          value model.expression,
          name "phrase",
          autofocus True,
          onInput address UpdateExpression,
          strStyle
        ]
        [ ],
      --button [ class "change" ] [ text "Change" ],
      h2
        [ revStyle]
        [ text (model.expression ++ " is " ++ 
          toString (validateString model.expression model.bmap )) ]
    ]


view : Address Action -> Model -> Html
view address model =
  div [ id "container" ]
    [ pageHeader,
      entryForm address model,
      pageFooter
    ]


initialModel : Model
initialModel =
  { expression = "", 
    bmap = 
      [
        newPair '(' ')',
        newPair '{' '}' 
      ]
  }


-- WIRE IT ALL TOGETHER!

main: Signal Html
main =
  StartApp.start
    { model = initialModel,
      view = view,
      update = update
    }


title : String -> Int -> Html
title message times =
  message ++ " "
    |> toUpper
    |> repeat times
    |> trimRight
    |> text

pageHeader : Html
pageHeader =
  h1 [ ] [ title "Validator" 1 ]


pageFooter : Html
pageFooter =
  footer [ ]
    [ a [ href "http://hat.kgisl.com" ]
        [ text "KGISL CampSite" ]
    ]


strStyle : Attribute
strStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]
    
revStyle : Attribute
revStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    , ("color", "red")
    ]
    
