require 'average'

def deriv(f)
  dx = 0.000001
  ->(x) { (f.(x+dx) - f.(x)) / dx }
end

def make_good_enough(f)
  ->(guess) {
    puts "DBG: [guess, f.(guess).abs]=#{[guess, f.(guess).abs].inspect}"
    f.(guess).abs < 0.001
  }
end

def make_improve_guess(f)
  d = deriv(f)
  ->(guess) {
    puts "DBG: [guess, f.(guess), d.(guess), (f.(guess) / d.(guess))]=#{[guess, f.(guess), d.(guess), (f.(guess) / d.(guess))].inspect}"
    guess - (f.(guess) / (d.(guess)))
  }
end

def find_root(good_enough, improve_guess)
  ->(x) {
    guess = 1
    while ! good_enough.(guess)
      puts guess
      guess = improve_guess.(guess)
    end
    guess
  }
end

def make_root(f)
  find_root(make_good_enough(f), make_improve_guess(f))
end

ff = ->(x) { Math.cos(x) }
ff_root = make_root(ff)
#p ff_root.(100)
puts

square = ->(x) { x * x }
sqrt = make_root(square)
g = ->(x) { square.(x) - x }
d = deriv(g)
p(g.(100) / d.(100))

puts
p sqrt.(100)
