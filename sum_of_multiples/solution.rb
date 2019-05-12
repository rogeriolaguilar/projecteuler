# Multiples of 3 and 5

# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
class MultliplesAdder
  attr_reader :multiples
  def initialize(numbers: [3, 5], range: (0..9))
    @range = range
    @numbers = numbers
    @multiples = []
  end

  def find_sum
    @range.inject do |result, value|
      if exists_multiple?(value)
        @multiples.push(value)
        result += value
      end
      result
    end
  end

  private

  def exists_multiple?(value)
    multiple?(@numbers[0], value) || multiple?(@numbers[1], value)
  end

  def multiple?(number, possible_multiple)
    return false if number > possible_multiple

    (possible_multiple % number).zero?
  end
end

multiples_adder = MultliplesAdder.new(range: (0..999))
puts "The sum of multiples is: #{multiples_adder.find_sum}"
puts "The multiples are: #{multiples_adder.multiples}"
