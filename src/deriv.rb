


square = ->(x) { x * x }
d_square = deriv(square)

p square.(5)
p d_square.(5)
