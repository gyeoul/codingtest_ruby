# frozen_string_literal: true

maps = %w[X591X X1X5X X231X 1XXX1]
# maps = %w[XXX XXX XXX]

def dfs(grid, row, col, visited)
  return 0 if row < 0 || row >= grid.length || col < 0 || col >= grid[0].length || visited[row][col] == true
  visited[row][col] = true
  return 0 if grid[row][col] == 'X'
  sum = grid[row][col].to_i
  sum += dfs(grid, row + 1, col, visited)
  sum += dfs(grid, row - 1, col, visited)
  sum += dfs(grid, row, col + 1, visited)
  sum += dfs(grid, row, col - 1, visited)
  return sum
end

def solution(maps)
  grid = Array.new(maps.length) { Array.new(maps[0].length) {} }
  visited = Array.new(maps.length) { Array.new(maps[0].length) { false } }
  maps.each_with_index do |v, i|
    v.each_char.with_index do |w, j|
      grid[i][j] = w
    end
  end
  answer = []
  (0...grid.length).each do |i|
    (0...grid[0].length).each do |j|
      res = 0
      next if grid[i][j] == 'X'
      res += dfs(grid, i, j, visited)
      answer.push(res) if res > 0
    end
  end
  return [-1] if answer.length <= 0
  answer.sort
end

puts solution(maps)