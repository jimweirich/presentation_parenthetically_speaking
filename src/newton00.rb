require 'average'

def sqrt(x)
  guess = 1
  while (guess*guess - x).abs > 0.01
    guess = average(guess, x / guess)
  end
  guess
end

p sqrt(100)
