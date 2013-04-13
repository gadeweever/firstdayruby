#defining variables
first_name = "Gamal"
last_name = "DeWeever"
age = 18

#simple string methods
old_string = "Ruby is cool"
new_string = old_string.upcase.reverse
puts new_string

#define empty methods

def do_something(a,b,c)
end

#defining arithmetic methods

def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def multiply(a,b)
	a*b
end

def divide(a,b)
	(a*1.0)/(b*1.0)
end

#testing arithmetic methods
puts "adding 4 and 5 #{add(4,5)}"
puts "adding 30.5 and 5 #{add(30.5,5)}"
puts "subtracting 2 and 4 #{subtract(2,4)}"
puts "multiplying 4 and 6 #{multiply(4,6)}"
puts "dividing 20 and 2 #{divide(20,2)}"

#concatenating an array
def array_concat(a,b)
	c = a.concat(b)
	c
end

#test concatenation
print array_concat([1,2,3], [4,5,6])

#largest integer in an array
def largest(a)
	largest = a[0]
	a.each do |b|
		if b>largest
			largest = b
		end
	end
	return largest
end

#testing largest integer return
puts
puts largest([5,6,6,1,-2])

#largest string in array

def longest_string(a)
	largest = a[0]
	a.each do |b|
		if b.length > largest.length
			largest = b
		end
	end
	return largest
end

#testing longest
puts longest_string(["hey", "goodbye","this", "no"])

#format address

def make_address(street,city,state,zip)
	return "You live at " + 
	street + 
	" in the beautiful city of " + city + ", " +
	state + ". Your zip is " + zip
 end

 #testing address
 puts make_address("123 SW22 nd Ter", "Ft. Lauderdale", "FL","33312")

 #factorial
 def factorial(n)
 	if n<0
 		return "invalid number. Too negative for my taste"
 	end

 	fact = 1
 	1.upto(n) do |i|
 	fact *= i
 	end
 	return fact
end

#factorial trial
puts "calculting 6!: #{factorial(6)}"
puts "calculting 5!: #{factorial(5)}"
puts "calculting -1!: #{factorial(-1)}"

#prtty triangles
def print_triangles(rows)
	1.upto(rows) do |x|
		1.upto(x) do 
			print "*"
		end
		puts
	end
end

#printing a pretty triangle
print_triangles(6)
print_triangles(0)

#calculting a sum
def total(a)
	mytotal = 0
	a.each do |x|
		mytotal = mytotal + x
	end
	return mytotal
end

#calculting the mean
def mean(a)
	return total(a).to_f / a.length.to_f
end

#printing means
puts mean([1,2,3,4])
puts mean([1,2,3,4])

#separating numbers with commas
def add_commas(mystr)
	if mystr.length <= 3
		return mystr
	else 
		return mystr[0,3] + "," + add_commas(mystr[3,mystr.length])
	end
end

def separate_comma(number)
	number = number.to_s.reverse
	return add_commas(number).reverse
end

puts separate_comma(1000000)
puts separate_comma(234)
puts separate_comma(1000)

#guessing game
def guess(n)
	print "please a guess number: "
	x = gets.chomp.to_i
	while n != x do
		if x < n
			puts "too low"
		else
			puts "too high"
		end
	print "please guess another: "	
	x = gets.chomp.to_i
	end
	puts "You got it"
end
guess(9)