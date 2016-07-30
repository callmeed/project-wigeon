#!/usr/bin/env ruby

# Step 1: initialize array
home_values = [725384,
               610099,
               499110,
               1248357,
               635702,
               923237,
               347682,
               529385]

# Step 2: print size
puts "There are currently #{home_values.size} home values saved"

# Step 3: add more values
home_values << 1536543
home_values << 724942

# Step 4: print new size
puts "There are currently #{home_values.size} home values saved"

# Step 5: loop and print messages
home_values.each_with_index do |value, index|
  counter = index + 1
  puts "Home #{counter}. has an assessed value of $#{value}"
  # Check for divisibility by 5 (mod)
  if value % 5 == 0
    puts "WARNING: Home requires re-assessment"
  end
  puts "\n"
end

# Step 6: min and max
min = home_values.min
max = home_values.max
puts "The min home value is $#{min}"
puts "The max home value is $#{max}"

# Step 7: mean
# NOTE: another option is .inject { |sum, n| sum + n }
sum = home_values.inject(:+).to_f
mean = (sum / home_values.size).round
puts "The mean home value is $#{mean}"
