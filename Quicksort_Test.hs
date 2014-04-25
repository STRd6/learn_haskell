import Quicksort
import Test.HUnit

testEmpty = TestCase $ assertEqual
  "Should return an empty list when sorting an empty list" empty (quicksort [])

testSmall = TestCase $ assertEqual
  "Should sort a small list" [1, 2, 3] (quicksort [2, 3, 1])

testDuplicates = TestCase $ assertEqual
  "Should not lose elements" [0, 0, 0] (quicksort [0, 0, 0])

tests = TestList [testEmpty, testSmall, testDuplicates]

main = runTestTT tests

empty = [] :: [Int]
