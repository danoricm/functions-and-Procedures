-- function.hs
import System.IO

myFunction :: Int -> Int
myFunction param = let
    x = param + 10
    x' = if x > 15 then x - 5 else x + 5
    in x' + sum [0..2]

main :: IO ()
main = do
    putStr "Enter an integer: "
    hFlush stdout
    input <- getLine
    let param = read input :: Int
    if param == 0 && input /= "0"
    then putStrLn "Invalid input"
    else print $ myFunction param
