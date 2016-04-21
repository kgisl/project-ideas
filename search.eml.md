
### Test Drive
To test drive this code 
 
 - Cut and paste the code below into the **eml** web console / [webpage](http://elm-lang.org/try)	



-- CUT BELOW starting with the "import"s ----

```eml

module HelloWorld where

import Color exposing (..)
import Graphics.Element exposing (..)
import Text as T
import String
import Regex exposing (..)
import Html exposing (text)

{--

import Markdown
main = Markdown.toElement """

# Search Engine 101

"""
--}

{--
main =
  text (
        "Searching \"" ++ input ++ "\" / Result: " ++ 
        -- (String.join ", " (findl input crawlOut))
        -- Text.fromString (toString ( findl input crawlOut) )
        (toString ( findl input crawlOut) )
       )
--}

searchStr: T.Text
searchStr = 
  "Searching \"" ++ input ++ "\""
    |> T.fromString
    |> T.color red
    |> T.bold
    |> T.bold
    |> T.height 40


resultStr: T.Text
resultStr = 
  "\nResult: " ++ toString (findl input crawlOut) 
      |> T.fromString
      |> T.color blue
      |> T.italic
      |> T.bold
      |> T.height 60


main : Element
main =
    T.append searchStr resultStr
      |> centered 


input: String
input = 
  "transform"
  
  
type alias Url       = String 
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
    if String.contains (String.toLower pattern) wtext
    then 
      True
    else 
      False

findt: String -> Wcontent -> Maybe Url
findt pattern wc = 
  let 
    (url, content) = wc
  in
    if find pattern content
    then
      Just url
    else
      Nothing
      
findl: String -> List Wcontent -> List Url
findl pattern listres =
  listres
      |> List.filterMap (findt pattern)
  --  |> List.filter (\ s  -> (s /= Nothing)) 
  --  |> List.map    (\ s  -> Maybe.withDefault "na" s)
      
  -- List.filter (\ s -> (s /= "NA") ) (List.map (\ wc -> findt2 p wc) listres)
  
  
  
  
  
```	