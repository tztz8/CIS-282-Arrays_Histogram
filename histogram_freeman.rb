############################################################
#
#  Name:        Timbre Freeman
#  Assignment:  Random Array Histogram
#  Date:        10/15/2019
#  Class:       CIS 282
#  Description: Make a random histogram
#
############################################################

# Starting values
# size of random array
random_amount = 200
# size of each value
min_random_value = 1
max_random_value = 100
# set size
size_random_value = 10

# making random array list
random_array = Array.new(random_amount)
for i in 0...random_array.length
  random_array[i] = rand(min_random_value..max_random_value)
end

# making Histogram array
histogram = Array.new((max_random_value-min_random_value+1)/size_random_value)
for i in 0...histogram.length
  histogram[i] = 0
  for j in 0...random_array.length
    if(random_array[j] <= (i+1)*size_random_value && random_array[j] > i*size_random_value)
      histogram[i] += 1
    end
  end
end

# printing the Histogram
#  Range   #Found  Chart
puts " Range   #Found  Chart"
# -------  ------  ---------------------------------------------
print " -----   ------  "
print "-"*(histogram.max+1)
puts " "
puts " "
for i in 1..histogram.length
  print "#{format("%2.0d",(size_random_value*i)-(histogram.length-1))}-#{format("%3.0d",i*size_random_value)}"
  print "   | #{format("%2.0d",histogram[i-1])} |  "
  print "*"*histogram[i-1]
  puts ""
end