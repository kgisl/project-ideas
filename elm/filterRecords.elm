import Html exposing (..)

type alias Record =
  { field1 : String
  , field2 : Int
  , field3 : Float
  }

type alias FilterData =
  { field1 : Maybe String
  , field2 : Maybe Int
  , field3 : Maybe Float
  }



toFilter : FilterData -> Record -> Bool 
toFilter filterData rec =
  let 
    test acc1 acc2 = 
      Maybe.map (\v -> (acc1 rec) == v) (acc2 filterData) 
      |> Maybe.withDefault True  
  in 
    List.all identity
        [ (test .field1  .field1)
        , (test .field2  .field2)
        , (test .field3  .field3)]

-- some test data
xs : List Record
xs = [ Record "a" 1 2, Record "b" 1 2]

someFilterData : FilterData
someFilterData = FilterData (Just "a") Nothing Nothing 

main : Html
main = text <| toString <| List.filter (toFilter someFilterData) xs
