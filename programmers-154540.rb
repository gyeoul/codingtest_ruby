# frozen_string_literal: true

maps = %w[X591X X1X5X X231X 1XXX1]

maps.each_with_index do |v, i|
  v.each_char.with_index do |w, j|
    print ' [', i, ',', j, '] ', w
  end
  puts
end

# $arr = Array.new(maps.size)
# $arr.each do |_|
#   Array.new(maps[0].size) { {} }
# end
# $arr[0][0]=Hash.new
#
# def getValue(x, y) end
#
# def getLabel(x, y) end
#
# def getStatus(x, y) end
#
# def calc(x, y, x_max, y_max)
#   return if y.negative? || y > y_max
#   return if x.negative? || x > x_max
#   unless getStatus(x + 1, y) && x + 1 > x_max
#
#   end
#   calc(x + 1, y + 1, x_max, y_max)
# end
#
# =begin
# def solution(maps)
#   result = []
#
#   x_max = maps.size
#   y_max = maps[0].size
#   arr = Array.new(x_max) { Array.new(y_max) }
#
#   maps.each.with_index do |td, x|
#     td.each_char.with_index do |tdd, y|
#       arr[x][y] = {}
#       arr[x][y]['value'] = tdd
#       arr[x][y]['visited'] = false
#       arr[x][y]['letter'] = ''
#     end
#   end
#   # puts arr
#   letter = '0'
#
#   arr.each.each_with_index do |v, x|
#     v.each.each_with_index do |w, y|
#       # print x, y, w
#       # puts
#       next if w['visited'] == true
#
#       w['visited'] = true
#       next if w['value'] == 'X'
#
#       if w['letter'] == ""
#         letter = letter.next
#         w['letter'] = letter
#       end
#
#       # puts
#       # puts letter
#
#       if x + 1 < x_max
#         if arr[x + 1][y]['value'] != 'X' && arr[x + 1][y]['visited'] == false
#           arr[x + 1][y]['letter'] = letter
#         else
#           arr[x + 1][y]['visited'] = true
#         end
#       end
#       if x - 1 >= 0
#         if arr[x - 1][y]['value'] != 'X' && arr[x - 1][y]['visited'] == false
#           arr[x - 1][y]['letter'] = letter
#         else
#           arr[x - 1][y]['visited'] = true
#         end
#       end
#       if y + 1 < y_max
#         if arr[x][y + 1]['value'] != 'X' && arr[x][y + 1]['visited'] == false
#           arr[x][y + 1]['letter'] = letter
#         else
#           arr[x][y + 1]['visited'] = true
#         end
#       end
#       if y - 1 >= 0
#         if arr[x][y - 1]['value'] != 'X' && arr[x][y - 1]['visited'] == false
#           arr[x][y - 1]['letter'] = letter
#         else
#           arr[x][y - 1]['visited'] = true
#         end
#       end
#     end
#   end
#
#   (1..letter.to_i).each do |i|
#     sum = 0
#     arr.each do |v|
#       v.each do |w|
#         sum += w['value'].to_i if w['letter'] == i.to_s
#       end
#     end
#     result.push(sum)
#   end
#   result = [-1] if result.empty?
#   result.sort
#   puts arr
# end
# puts solution(["X36XXX","2X2222","222XXX","XXXX11"])
