# frozen_string_literal: true

def solution(s)
  answer = []
  arr = s.split(" ").map{|v|v.to_i}
  answer.push(arr.min)
  answer.push(arr.max)
  answer.join(" ")
end

s1="1 2 3 4"
s2="-1 -2 -3 -4"
s3="-1 -1"

print solution(s2)