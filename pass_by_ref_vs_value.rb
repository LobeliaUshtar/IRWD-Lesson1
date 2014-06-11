array = [1, 2, 3, 4, 5]

def no_flip_flop(x)
  x.reverse
end
puts "Method's return is #{no_flip_flop(array)}"
puts "Original array now #{array}"

def flip_flop(x)
  x.reverse!
end
puts "Method's mutated return is #{flip_flop(array)}"
puts "Original array now #{array}"