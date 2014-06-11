puts "1 Create a local variable and modify it at an inner scope."

x = 15
3.times do
  y = x + 1
end
puts "a) reassigning the variable to something else:"
puts "\tx is #{x}"

x = [1, 2, 3, 3, 2, 1]
def no_dup(x)
  x = x.uniq
  puts "\tx in the method is #{x}"
end
puts "b) call a method that doesn't mutate the caller:"
no_dup(x)
puts "\tx is #{x}"

x = [1, 2, 3, 3, 2, 1]
def no_dup(x)
  x = x.uniq!
  puts "\tx in the method is #{x}"
end
puts "c) call a method that mutates the caller:"
no_dup(x)
puts "\tx is #{x}"

puts "2 Create a local variable at an inner scope and try to reference it in the outer scope. What happens when you have nested do/end blocks?"
puts "\ty is #{y}" # ERROR ~ in `<main>': undefined local variable or method `y' for main:Object (NameError)
# the same sort of thing will happen: outer can og into inner but not vice versa