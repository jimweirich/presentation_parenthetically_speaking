require 'average'

sqrt_good_enough = ->(guess, x) {
  (guess*guess - x).abs < 0.01
}

sqrt_improve_guess = ->(guess, x) {
  average(guess, x / guess) 
}

def find_root(x, good_enough, improve_guess)
  guess = 1
  while ! good_enough.(guess, x)
    guess = improve_guess.(guess, x)
  end
  guess
end

p find_root(100, sqrt_good_enough, sqrt_improve_guess)
