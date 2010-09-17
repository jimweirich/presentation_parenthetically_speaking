require 'average'

def sqrt(x)
  printf "N     Guess        N/Guess      New Guess\n"
  printf "----- ------------ ------------ ------------\n"
  guess = 1
  while (guess*guess - x).abs > 0.01
    new_guess = average(guess, x / guess)
    printf "%5.1f %12.8f %12.8f %12.8f\n", x, guess, x/guess, new_guess
    guess = new_guess
  end
  guess
end

p sqrt(100)
