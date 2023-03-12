# frozen_string_literal: true

def solution(s)
  flag = true
  answer = ''
  s.downcase.each_char do |v|
    flag ? a = v : a = v.upcase
    v == " " ? flag = false : flag = true
    answer += a
  end
  answer
end

s = "3people unFollowed  me"

print solution(s)