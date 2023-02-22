# frozen_string_literal: true
x = gets.chomp.to_i
arr = Array.new(x + 1, 1)
arr[1] = 0
(4...x + 1).each do |i|
  # print arr
  # puts
  if i % 2 == 0 && i % 3 == 0
    arr[i] = [arr[i / 3], arr[i / 2], arr[i - 1]].min + 1
  elsif i % 3 == 0
    arr[i] = [arr[i / 3], arr[i - 1]].min + 1
  elsif i % 2 == 0
    arr[i] = [arr[i / 2], arr[i - 1]].min + 1
  else
    arr[i] = arr[i - 1] + 1
  end
end
puts arr[x]