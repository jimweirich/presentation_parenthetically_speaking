def average(a, b)
  (a+b) / 2.0
end

Sqrt = ->(x) {
  improve_guess = ->(guess) { average(guess, x / guess) }
  good_enough = ->(guess) { (guess*guess - x).abs < 0.01 }
  guess = 1
  while ! good_enough.(guess)
    guess = improve_guess.(guess)
  end
  guess
}

p Sqrt.(100)
