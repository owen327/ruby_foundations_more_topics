# def reduce(array, start = 0)
#   counter = 0
#   acc = start
#   while counter < array.size
#     acc = yield acc, array[counter]
#     counter += 1
#   end
#   acc
# end
#
#
# array = [1, 2, 3, 4, 5]
#
# p reduce(array) { |acc, num| acc + num }                    # => 15
# p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? } # => NoMethodError: undefined method `+' for nil:NilClass

class Array
  def my_reduce(start = 0)
    counter = 0
    acc = start
    while counter < self.size
      acc = yield acc, self[counter]
      counter += 1
    end
    acc
  end
end


array = [1, 2, 3, 4, 5]

p array.my_reduce { |acc, num| acc + num }                    # => 15
p array.my_reduce(10) { |acc, num| acc + num }                # => 25
p array.my_reduce { |acc, num| acc + num if num.odd? } # => NoMethodError: undefined method `+' for nil:NilClass
