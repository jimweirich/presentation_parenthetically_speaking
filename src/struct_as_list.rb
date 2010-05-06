List = Struct.new(:head, :tail)

Cons = ->(h,t)  { List.new(h,t) }
Car  = ->(list) { list.head }
Cdr  = ->(list) { list.tail }
IsList = ->(list) { list.is_a?(List) }
