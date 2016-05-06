import Html exposing (..) 
import Graphics.Element exposing (..) 
   
type alias Filter = 
  { divisor : Int, 
    string : String
  } 

inputPairs = 
  [
    (3, "Fizz"), 
    (5, "Buzz"), 
    (7, "Mix")
  ]

createFilter : (Int, String)  -> Filter 
createFilter tt =
  let 
    (x, s ) = tt 
  in 
    { divisor = x, string = s} 
        
buildFilterList pairs = 
  pairs 
    |> List.map (\x -> (fst x, snd x))
    |> List.map createFilter
    
  
applyFilter : Int -> Filter -> Maybe String 
applyFilter number filter = 
  let 
    rem = (%) number filter.divisor
    isMultiple = if rem == 0 then True else False 
  in 
    if isMultiple then 
      Just filter.string
    else 
      Nothing 


applyFilters listf number = 
  let 
    olist = List.filterMap (applyFilter number) listf 
    res   = List.foldr (++) "" olist
  in 
    if res == "" then
      toString number
    else 
      res


main: Element
main = 
  let 
    f3      = createFilter (3, "Fizz" ) 
    f5      = createFilter (5, "Buzz" )
    f7      = createFilter (7, "Mix"  ) 
    -- listF   = [f3, f5, f7]
    listF   = buildFilterList inputPairs 
    
    result  = applyFilter 105 f3
    result2 = List.filterMap (applyFilter 143) listF

    out     = applyFilters listF 123
    
    finalo  = List.map (applyFilters listF) [1..110]
    
    finalF  = 
      List.map (applyFilters listF) [1..110]
   
  in 
    finalo |> List.map show |> flow down
