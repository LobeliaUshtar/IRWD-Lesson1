a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "number 1"
a.each { |e| puts e}

puts "number 2"
a.each { |e| puts e if e > 5}

puts "number 3"
a.select{ |e| puts e if e.odd?}

puts "number 4"
a << 11
a.unshift(0)
a.each { |e| puts e}

puts "number 5"
a.pop
a.push(3)
a.each { |e| puts e}

puts "number 6"
x = a.uniq
puts "a is #{a}"
puts "a without duplicates is #{x}"

puts "number 7"
puts "Hashes have key/value pairs and order by insertion. Arrays are indexed and ordered."

puts "number 8"
hash18 = {:a => 1, :b =>2, :c => 3, :d => 4}
hash19 = {a: 1, b: 2, c: 3, d: 4}
puts hash18
puts hash19

puts "number 9"
puts "there is no string 'b'"

puts "number 10"
h = {a: 1, b: 2, c: 3, d: 4}
h[:e] = 5
puts h

puts "number 13"
h.each { |k, v| h.delete(k) if v < 3.5}
puts h

puts "number 14"
puts "Yes"
h[:a] = [1, 2, 3, 4]
puts h