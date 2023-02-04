# frozen_string_literal: true

test = "abracadabra"

a, b, c = 0, 0, 0
t = ''
test.each_char do |v|
  if a == b
    t = v
    c += 1
  end
  if t == v
    a += 1
  else
    b += 1
  end
end
puts c