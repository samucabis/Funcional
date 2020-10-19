collatzSequence 1 = 1
collatzSequence n =
  if (even n)
    then (n `div` 2)
    else (3 * n + 1)

collatz n =
  if n == 1
    then [1]
    else [n] ++ collatz (collatzSequence n)