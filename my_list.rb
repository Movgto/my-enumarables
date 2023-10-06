require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def [](index)
    @list[index]
  end

  def size
    @list.size
  end
end


list = MyList.new(1, 2, 3, 4)
puts(list.my_all? { |e| e < 5 })
puts(list.my_all? { |e| e > 5 })
puts(list.my_any? { |e| e == 2 })
puts(list.my_any? { |e| e == 5 })
p(list.my_filter(&:even?))
