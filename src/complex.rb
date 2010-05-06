require 'struct_as_list'

def make_complex(r,i)
  Cons.(r,i)
end

def re(c)
  Car.(c)
end

def im(c)
  Cdr.(c)
end

def complex_add(n1, n2)
  make_complex(re(n1) + re(n2), im(n1) + im(n2))
end

def print_complex(number)
  puts "re=#{'%0.2f' % re(number)}, im=#{'%0.2f' % im(number)}"
end

num1 = make_complex(1,2)
num2 = make_complex(3,4)

print_complex(num1)
print_complex(num2)
print_complex(complex_add(num1, num2))
