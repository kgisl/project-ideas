import Markdown 
import Html exposing (li, text, ul, div)


type alias Filter = 
  { divisor : Int, 
    string : String
  } 

inputFilters = 
  [ Filter 3 "Fizz"
  , Filter 5 "Buzz"
  , Filter 7 "Mix"
  ]

  
applyFilter : Int -> Filter -> Maybe String 
applyFilter number filter = 
  if number % filter.divisor == 0 then
    Just filter.string
  else 
    Nothing
   

applyFilters filters number = 
  let 
    res = List.filterMap (applyFilter number) filters 
      |> List.foldr (++) ""
  in 
    if res == "" then
      toString number
    else 
      res

viewElement element = 
  li [] [ text element]

main = 
  let     
    output  = 
      List.range 1 110
        |> List.map (applyFilters inputFilters) 
        -- |> toString 
        |> List.map viewElement
 
  in
    -- Markdown.toHtml [] output
    ul [] output 
 
