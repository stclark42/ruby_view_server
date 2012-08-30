require 'erb'

x = 49
nums = Array[5, 4, 3, 2, 1]
months = Hash.new('month')
months = {"1" => "January", "2" => "February", "3" => "March", "4" => "April", "5" => "May", "6" => "June", "7" => "July", "8" => "August", "9" => "September", "10" => "October", "11" => "November", "12" => "December" }
word = String.new("Bird")

template = ERB.new "The value of x is: <%= x %>"
numtest = ERB.new "The 5th number is <%= nums[2] %>"
monthtest = ERB.new "The 4th month is <%= months['4'] %>"
stringtest = ERB.new "<%= word %> is the word."

puts template.result(binding)
puts numtest.result(binding)
puts monthtest.result(binding)
puts stringtest.result(binding)

