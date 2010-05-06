Cons = ->(h,t)  { ->(s) { (s==:h) ? h : t } }
Car  = ->(list) { list.(:h) }
Cdr  = ->(list) { list.(:t) }
IsList = ->(list) { list.is_a?(Proc) }

