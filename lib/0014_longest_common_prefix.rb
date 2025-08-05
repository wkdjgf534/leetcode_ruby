# frozen_string_literal: true

# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".

# Example 1:
# Input: strs = ["flower","flow","flight"]
# Output: "fl"

# Example 2:
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

# Runtime 0ms, beats 100%
# Memory 211.54 MB, beats 51.16%
def longest_common_prefix(strs)
  prefix = strs.min_by(&:length)
  words = strs.size

  words.times do |i|
    until strs[i].start_with?(prefix)
      prefix = prefix[0...prefix.length - 1]

      return '' if prefix.empty?
    end
  end

  prefix
end

p longest_common_prefix(%w[flower flow flight])
