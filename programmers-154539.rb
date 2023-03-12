# frozen_string_literal: true

numbers1 = [2, 3, 3, 5] #[3, 5, 5, -1]
numbers2 = [9, 1, 5, 3, 6, 2] #[-1, 5, 6, 6, -1, -1]
numbers = numbers2

answer = []
=begin
def solution(numbers)
  answer = []
  n = numbers.length
  hash_table = {}

  # Create a hash table to store the indexes of each number in the array
  numbers.each_with_index do |v,i|
    hash_table[v] = i
  end

  # Sort the numbers in ascending order
  numbers.sort!

  # Find the next greater number for each value
  numbers.each_with_index do |v,i|
    j = i + 1
    while j < n && numbers[j] <= v
      j += 1
    end
    if j < n
      answer[hash_table[v]] = numbers[j]
    else
      answer[hash_table[v]] = -1
    end
  end

  return answer
end

def nextnum(i,arr,v)
  (i...arr.length).each do |j|
    return arr[j] if v<arr[j]
  end
  -1
end
=end

def solution(numbers)
  answer = [-1] * numbers.length
  stack = []

  numbers.each_with_index do |v, i|
    while stack.any? && numbers[stack.last] < v
      j = stack.pop
      answer[j] = v
    end
    stack.push(i)
  end

  return answer
end

print solution(numbers)