######################################################################
#
#  Name:        Timbre Freeman
#  Assignment:  Random Array Histogram (Small 8-line or less)
#  Date:        10/15/2019
#  Class:       CIS 282
#  Description: Make a random histogram but less than 8-lines of code
#
######################################################################

# make the random array
random_array = Array.new(200) {rand(1..100)}
# make the array to hold the histogram
histogram = Array.new(10,0)
# make the histogram from the random array
histogram.each_index { |i| random_array.each { |j| histogram[i] += 1 if (j <= (i+1)*10 && j > i*10) } }
# print the top part of the histogram
puts " Range   #Found  Chart \n -----   ------  #{"-"*(histogram.max+1)}"
# print the histogram
histogram.each_with_index { |h,i| puts "#{format("%2.0d",(10*(i+1))-(10-1))}-#{format("%3.0d",(i+1)*10)}   | #{format("%2.0d",h)} |  #{"*"*h}" }