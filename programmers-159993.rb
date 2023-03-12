# frozen_string_literal: true

str = %w[SOOOL XXXXO OOOOO OXXXX OOOOE]

def calc(arr, s, e)
  row = arr.length
  col = arr[0].length
  print row," ",col,' ',s,e
  puts
  visited = Array.new(row) { Array.new(col, false) }
  queue = [[s, 0]]
  visited[s[0]][s[1]] = true
  until queue.empty?
    n, p = queue.shift
    return p if n == e

    [[0, 1], [1, 0], [0, -1], [-1, 0]].each do |v|
      r = n[0] + v[0]
      c = n[1] + v[1]
      print r, c
      puts
      if r.between?(0, row - 1) && c.between?(0, col - 1) && visited[r][c] != true && arr[r][c] != 'X'
        queue << [[r, c], p + 1]
        visited[r][c] = true
      end
    end
  end
end

def main(str)
  s = l = e = arr = []
  str.each do |d|
    arr.push(d.chars)
  end
  str.each_with_index do |d, i|
    s = [i, d.index('S')] if d.include?('S')
    l = [i, d.index('L')] if d.include?('L')
    e = [i, d.index('E')] if d.include?('E')
  end
  solve1 = calc(arr, l, s)
  if solve1 == -1
    return -1
  end
  solve2 = calc(arr, l, e)
  if solve2 == -1
    return -1
  end
  return solve1 + solve2
end

puts main(str)
