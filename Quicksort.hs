module Quicksort where

quicksort [] = []
quicksort (pivot:elements) =
  let
    less = (filter (< pivot) elements)
    more = (filter (>= pivot) elements)
  in (quicksort less) ++ [pivot] ++ (quicksort more)
