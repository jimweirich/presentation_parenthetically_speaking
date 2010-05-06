def list_to_string(lst)
  if IsList.(lst)
    buf = "("
    while lst
      buf << list_to_string(Car.(lst))
      lst = Cdr.(lst)
      buf << " " if lst
    end
    buf << ")"
    buf
  else
    lst.to_s
  end
end

def display(sexp)
  if IsList.(sexp)
    puts list_to_string(sexp)
  else
    puts sexp.to_s
  end
end

class Object
  def to_list
    self
  end
end

class Array
  def to_list
    result = nil
    reverse.each do |item|
      result = Cons.(item.to_list, result)
    end
    result
  end
end

