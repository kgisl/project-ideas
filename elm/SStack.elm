
module SStack where

import String

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

-- An inefficient equivalent of 
-- String.reverse which is already available 
reverse : SStack -> SStack
reverse stack =
  case (pop stack) of 
    Nothing ->
      empty
    Just(x, r) -> 
      push  (reverse r) (String.fromChar x)


isEmpty: SStack -> Bool 
isEmpty s = 
  if String.isEmpty s then
    True
  else
    False 

pushC: Char -> SStack -> SStack
pushC c s = 
  push (String.fromChar c) s

isOpenr: Char -> Bool 
isOpenr o = 
    List.member o ['(']

isClosr: Char -> Bool 
isClosr c = 
  List.member c [')']


validate: String -> SStack -> Bool
validate expr stacks = 
  case (pop expr) of 
    Just (x, restExpr) -> 
        if (isOpenr x) then
            validate restExpr (pushC x stacks)
        else if (isClosr x) then 
          case (pop stacks) of 
            Just(top, restOfStack) -> 
              case (isClosr top) of 
                True -> 
                  validate restExpr restOfStack
                False -> 
                  False
            Nothing ->
              False
        else
            validate restExpr stacks
    Nothing -> 
      isEmpty stacks




