def make_complex(r,i)
  ->(method) {
    { re: r, im: i }[method]
  }
end

def re(c)
  c.(:re)
end

def im(c)
  c.(:im)
end

def make_polar_complex(m,a)
  angle_in_radians = Math::PI * a / 180
  ->(method) {
    {
      re: ->() {
        Math.cos(angle_in_radians) * m
      },
      im: ->() {
        Math.sin(angle_in_radians) * m
      },
    }[method].call()
  }
end

def complex_add(n1, n2)
  make_complex(re(n1) + re(n2), im(n1) + im(n2))
end

def print_complex(number)
  puts "re=#{'%0.2f' % re(number)}, im=#{'%0.2f' % im(number)}"
end

num1 = make_complex(1,2)
num2 = make_polar_complex(5, 53.130102354156)

print_complex(num1)
print_complex(num2)
print_complex(complex_add(num1, num2))
