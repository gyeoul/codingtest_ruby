# frozen_string_literal: true

numbers1 = [2, 3, 3, 5]	#[3, 5, 5, -1]
numbers2 = [9, 1, 5, 3, 6, 2]	#[-1, 5, 6, 6, -1, -1]
numbers = numbers2

answer = []
def solution(numbers)
  answer = []

  numbers.each_with_index do |v,i|
    answer.push(nextnum(i,numbers,v))
  end
  return answer
end

def nextnum(i,arr,v)
  (i...arr.length).each do |j|
    return arr[j] if v<arr[j]
  end
  -1
end

print solution(numbers)