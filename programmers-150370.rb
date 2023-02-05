# frozen_string_literal: true

require 'date'

def solution(today, terms, privacies)
  answer = []
  hashs = {}
  t = Date.parse(today)
  terms.each do |v|
    d = v.split(" ")
    hashs[d.first] = d.last
  end
  # puts t
  # puts hashs
  privacies.each_with_index do |v, i,|
    d = v.split(" ")
    # print d, " / "
    a = Date.parse(d.first)
    a = a.next_month(hashs[d.last].to_i)
    # print a, ""
    if a <= t
      answer.push(i + 1)
    end
    # puts
  end
  answer
end

today = "2022.05.19"
terms = ["A 6", "B 12", "C 3"]
privacies = ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"]
puts solution(today, terms, privacies)