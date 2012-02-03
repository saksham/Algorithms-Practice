load "MergeSort.rb"
array = [7, 10, 14, 1, 2, 8, 5, 15, 3, 8, 9, 12, 3, 11, 18, 6, 4] | (10000.downto(1)).to_a
array.class
puts "Sorting..."
start = Time.now
array.merge_sort!
elapsed = Time.now - start 
puts "Computed in #{elapsed} seconds"