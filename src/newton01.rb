require 'average'

def good_enough?(guess, x)
  (guess*guess - x).abs < 0.01
end

def improve_guess(guess, x)
  average(guess, x / guess) 
end

def sqrt(x)
  guess = 1
  while ! good_enough?(guess, x)
    guess = improve_guess(guess, x)
  end
  guess
end

p sqrt(100)
