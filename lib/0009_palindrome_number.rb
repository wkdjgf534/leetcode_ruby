# frozen_string_literal: true

# Given an integer x, return true if x is a , and false otherwise.

# Example 1:
# Input: x = 121
# Output: true
# Explanation: 121 reads as 121 from left to right and from right to left.

# Example 2:
# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

# Example 3:
# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.

#  Follow up: Could you solve it without converting the integer to a string?

# The first solution
# Runtime 22ms, beats 14.23%
# Memory 210.70 MB, beats 12.13%
# def palindrome?(num)
#   return false if num.negative?

#   original_num = num
#   reversed_num = 0

#   while num.positive?
#     div, mod = num.divmod(10)
#     reversed_num = reversed_num * 10 + mod
#     num = div
#   end

#   original_num == reversed_num
# end

# The second_solution
# Runtime 7ms, Beats: 59.00%
# Memory 211.50 MB, Beats: 94.56%
def palindrome?(num)
  return false if num.negative?
  return false if (num % 10).zero? && num != 0

  reversed_part = 0

  while num > reversed_part
    last_digit = num % 10
    reversed_part = reversed_part * 10 + last_digit
    num /= 10
  end

  num == reversed_part || num == reversed_part / 10
end

p palindrome?(121)
