require 'list_support'

lst = [1,[2,3],4,5].to_list

display lst
display Car.(lst)
display Cdr.(lst)
display Car.(Cdr.(lst))
display Cdr.(Cdr.(lst))
display Cdr.(Cdr.(Cdr.(Cdr.(lst))))
