# frozen_string_literal: true

require 'set'

book_time1 = [%w[15:00 17:00], %w[16:40 18:20], %w[14:20 15:20], %w[14:10 19:20], %w[18:20 21:20]] # 3
book_time2 = [%w[09:10 10:10], %w[10:20 12:20]] # 1
book_time3 = [%w[10:20 12:30], %w[10:20 12:30], %w[10:20 12:30]] # 3

def to_minutes(book_time)
  book_time.map do |t|
    start_time = t[0].split(":")
    end_time = t[1].split(":")
    [start_time[0].to_i * 60 + start_time[1].to_i, end_time[0].to_i * 60 + end_time[1].to_i + 10]
  end
end

def solution(book_time)
  arr = to_minutes(arr)
  print arr
  answer = Array.new(1500,0)
  arr.each do |t|
    (t[0].to_i...t[1].to_i-1).each do |time|
      #puts time
      answer[time] += 1
    end
    #puts
  end
  answer.compact.max
end

puts solution(book_time3)
