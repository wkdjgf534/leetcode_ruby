# frozen_string_literal: true

# Given an integer array nums sorted in non-decreasing order,
# remove the duplicates in-place such that each unique element appears only once.
# The relative order of the elements should be kept the same.
# Then return the number of unique elements in nums.

# Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:

# Change the array nums such that the first k elements of nums contain the unique elements
# in the order they were present in nums initially.
# The remaining elements of nums are not important as well as the size of nums.

# Return k.

# Example 1:
# Input: nums = [1,1,2]
# Output: 2, nums = [1,2,_]
# Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
# It does not matter what you leave beyond the returned k (hence they are underscores).

# Example 2:
# Input: nums = [0,0,1,1,1,2,2,3,3,4]
# Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
# Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
# It does not matter what you leave beyond the returned k (hence they are underscores).

# Combination of methods (uniq and size) - does not work at leetcode

# The first solution
# Runtime 4ms, beats 35.78%
# Memory 212.57 MB, beats 38.07%
# def remove_duplicates(nums)
#   return 0 if nums.empty?
#   k = 1
#   nums.size.times do |ind|
#     if nums[ind] != nums[k - 1]
#       nums[k] = nums[ind]
#       k += 1
#     end
#   end
#   k
# end

# Runtime 0ms, beats 100%
# Memory 212.55 MB, beats 38.07%
def remove_duplicates(nums)
  return 0 if nums.empty?

  k = 1
  nums.each_index do |ind|
    if nums[ind] != nums[k - 1]
      nums[k] = nums[ind]
      k += 1
    end
  end
  k
end

puts remove_duplicates([0, 1, 1, 2, 2, 3, 4, 5])
