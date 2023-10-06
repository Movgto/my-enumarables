module MyEnumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    counter = 0
    while counter < size
      yield(self[counter])
      counter += 1
    end
    self
  end

  def my_all?
    my_each { |element| return false unless yield(element) }
    true
  end

  def my_any?
    my_each { |element| return true if yield(element) }
    false
  end

  def my_filter
    result = []
    my_each { |element| result << element if yield(element) }
    result
  end
end