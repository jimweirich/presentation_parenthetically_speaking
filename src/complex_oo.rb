class ComplexNumber
  attr_reader :re, :im
  def initialize(r,i)
    @re = r
    @im = i
  end
end

class PolarComplexNumber
  def initialize(m,a)
    @mag = m
    @angle = a
  end
  def re
    Math.cos(angle_in_radians) * @mag
  end
  def im
    Math.sin(angle_in_radians) * @mag
  end
  private
  def angle_in_radians
    Math::PI * @angle / 180
  end
end

def complex_add(n1, n2)
  ComplexNumber.new(n1.re + n2.re, n1.im + n2.im)
end

def print_complex(number)
  puts "re=#{'%0.2f' % number.re}, im=#{'%0.2f' % number.im}"
end

num1 = ComplexNumber.new(1,2)
num2 = PolarComplexNumber.new(5, 53.130102354156)

print_complex(num1)
print_complex(num2)
print_complex(complex_add(num1, num2))
