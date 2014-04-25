doubleMe x = x + x

doubleSmallNumber x =
  if x > 100
    then
      x
    else
      x*2

lucky 7 = "Lucky number 7!"
lucky x = "Tough rugh bub!"


factorial 0 = 1
factorial n = n * factorial(n - 1)

charName 'a' = "Albertron"
charName 'b' = "Broseph"
charName 'c' = "Crandel"
charName 'd' = "Duder"

addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

--first (x) = x
--first (x, _) = x
first (x, _, _) = x

--second (_, y) = y
second (_, y, _) = y

third (_, _, z) = z

length' [] = 0
length' (_:xs) = 1 + length' xs

bmiTell weight height
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise   = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2
    skinny = 18.5
    normal = 25.0
    fat = 30.0

initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname
