# Start with the answer
# x = 4

# Now, come up with a simple addition/subtraction algebra problem
# x + y = z where x = 4
# x = z - y so what could z and y be to make x 4?
# 12 - 8 = 4, so z = 12 and y = 8, plug it in to the equation, and the problem is:
# x + 8 = 12

puts "Problem: x + 8 = 12"
puts "Answer:  x = 4"

# What do we do next? Options:
# => Have the program generate a random variable (ex: 'a' instead of 'x')
# => Have the program generate z and y, given that x = 4

# Random variable first
variable = ('a'..'z').to_a.sample # Choose random letter of the alphabet
puts "Problem: #{variable} + 8 = 12"
puts "Answer:  #{variable} = 4"

# Choose random y and z, so that variable = 4
# x + y = z, where x = 4
x = 4
# What is the minimum and maximum number you want for z?
# => 0 to 25
z = (0..25).to_a.sample
# How do we calculate what y should be, given that x = 4 and z = random #
y = z - x

puts "Problem: #{variable} + #{y} = #{z}"
puts "Answer:  #{variable} = #{x}"

# Can we change the program so that the answer isn't always 4?
# What is the minimum and maximum number you want for x?
# => -25 to 25
x = (-25..25).to_a.sample
# Can we keep the code above the same for z and y?
# => Yes, let's check
z = (0..25).to_a.sample
# How do we calculate what y should be, given that x = 4 and z = random #
y = z - x

puts "Problem: #{variable} + #{y} = #{z}"
puts "Answer:  #{variable} = #{x}"

# How do we exclude or include specific letters to be the variable (so we don't get 'o' or 'z')
variable = ['x', 'y', 'z', 'v'].sample
x = (-25..25).to_a.sample
# Can we keep the code above the same for z and y?
# => Yes, let's check
z = (0..25).to_a.sample
# How do we calculate what y should be, given that x = 4 and z = random #
y = z - x

puts "Problem: #{variable} + #{y} = #{z}"
puts "Answer:  #{variable} = #{x}"

# How can we change the program so that we use a minus sign instead of "X + -1 = 2"
variable = ['x', 'y', 'z', 'v'].sample
x = (-25..25).to_a.sample
# Can we keep the code above the same for z and y?
# => Yes, let's check
z = (0..25).to_a.sample
# How do we calculate what y should be, given that x = 4 and z = random #
y = z - x

sign = if y.negative?
         "-"
       else
         "+"
       end

puts "Problem: #{variable} #{sign} #{y.abs} = #{z}"
puts "Answer:  #{variable} = #{x}"
