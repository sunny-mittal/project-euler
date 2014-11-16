require_relative './maximum_path_sum_1'

@triangle = []

File.open('./extras/p067_triangle.txt') do |f|
  f.each_line do |l|
    @triangle << l.chomp.split(' ').map!(&:to_i)
  end
end

p reduce_triangle
