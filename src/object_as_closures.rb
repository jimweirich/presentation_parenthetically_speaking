def imap(list, functor)
  result = []
  for it in list
    result << functor.call(it)
  end
  result
end


multiplier = 10
list = [1,2,3,4]

puts list.map { |it| multiplier * it }

class MultiplyBy
  def initialize(multiplier)
    @multiplier = multiplier
  end
  def call(it)
    it * @multiplier
  end
end
puts imap(list, MultiplyBy.new(multiplier))
