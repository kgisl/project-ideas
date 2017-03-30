import Markdown 

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


main = 
  let     
    output  = 
      List.range 1 110
        |> List.map (applyFilters inputFilters) 
        |> toString 
 
  in
    Markdown.toHtml [] output
