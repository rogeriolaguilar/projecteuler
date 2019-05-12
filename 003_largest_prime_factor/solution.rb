# Largest prime factor

# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
require 'byebug'

def prime_number?(number)
  result = true
  return false if (number % 2).zero?

  num = 3
  number_per_three = number/3
  while num <= number_per_three
    if (number % num).zero?
      result = false
      break
    end
    num += 1
  end
  result
end

def larger_prime_factor(number)
  return number / 2 if number.even?

  max_factor = 1_000_000 # roubando
  while max_factor >= 1
    break if (number % max_factor).zero? && prime_number?(max_factor)

    puts("max_factor: #{max_factor}") if (max_factor % 1000).zero?
    max_factor -= 1
  end

  max_factor
end

SAMPLE_NUMBER = 13_195
QUEST_NUMBER = 600_851_475_143
puts "larger_prime_factor of #{SAMPLE_NUMBER} is: #{larger_prime_factor(SAMPLE_NUMBER)}"
puts "larger_prime_factor of #{QUEST_NUMBER} is: #{larger_prime_factor(QUEST_NUMBER)}"