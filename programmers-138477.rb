# frozen_string_literal: true

k = 3
score = [10, 100, 20, 150, 1, 100, 200]

def solution(k, score)
  answer = []
  arr = []
  index = 0
  loop do
    break if index > score.length-1
    arr << score[index]
    answer.push(arr.sort.reverse.slice(Range.new(0,k-1)).sort[0])
    index += 1
  end
  return answer
end

puts solution(k,score)