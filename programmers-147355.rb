# frozen_string_literal: true

test_t,test_p = "3141592", "271"

def solution(t, p)
  answer = 0
  t_arr = t.split("")
  process_arr = []
  Range.new(0, t.length - p.length).each { |i|
    process_arr.push(t_arr[Range.new(i,i-(p.length*-1)-1)].join.to_i)
  }
  process_arr.each do |i|
    if i <= p.to_i
      answer+=1
    end
  end
  return answer
end
