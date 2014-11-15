require_relative './lib/extended_fixnum'

def num_paths(grid_size)
  total_moves = grid_size * 2
  unique_paths = total_moves.factorial / (grid_size.factorial ** 2)
end
