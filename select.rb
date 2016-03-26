# def select(array)
#   new_array = []
#   i = 0
#   while i < array.size
#     new_array << array[i] if yield array[i]
#     i += 1
#   end
#   new_array
# end

class Array
  def my_select
    new_array = []
    i = 0
    while i < self.size
      new_array << self[i] if yield self[i]
      i += 1
    end
    new_array
  end
end


array = [1, 2, 3, 4, 5]

# p select(array) { |num| num.odd? }      # => [1, 3, 5]
# p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
# p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true

p array.my_select { |num| num.odd? }      # => [1, 3, 5]
p array.my_select { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p array.my_select { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1"
