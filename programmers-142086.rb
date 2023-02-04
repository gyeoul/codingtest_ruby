# frozen_string_literal: true

test = "banana"

def solution(s)
  arr = s.split("")
  index = 0
  answer = []
  loop do
    break if index > arr.size - 1
    pointer = index - 1
    findi = -1
    findv = arr[index]
    loop do
      break if pointer < 0
      if arr[pointer] == findv
        findi = index - pointer
        break
      end
      pointer -= 1
    end
    answer.push(findi)
    index += 1
  end
  answer
end

chars = {}
test.each_char.map.with_index do |v, i|
  print v, i, "\n"
  value = if chars[v]
            i - chars[v]
          else
            -1
          end
  chars[v] = i
  puts value
end

# puts solution(test)

