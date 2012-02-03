module Sorting
  def merge!(p, q, r)
    n1 =  q - p + 1
    n2 = r - q
    
    # Construct left and right arrays
    left = Array.new(n1)
    right = Array.new(n2)
    (0...n1).each do |i|
      left[i] = self[p + i]
    end
    (0...n2).each do |j|
      right[j] = self[q + j + 1]
    end
    
    
    # Start merging
    i = 0; j = 0
    (p..r).each do |k|
       if i < n1 && j < n2
          if left[i] < right[j]
            self[k] = left[i]
            i = i + 1
          else
            self[k] = right[j]
            j = j + 1
          end
        elsif i < n1
          self[k] = left[i]
          i = i + 1
        else
          self[k] = right[j]
          j = j + 1
        end
    end
  end
  
  def merge_sort!(p = 0, r = self.length - 1)
    if (p < r)
      q = ((p + r)/2).floor
      merge_sort!(p, q)
      merge_sort!(q+1, r)
      merge!(p, q, r)
    end
  end
end

class Array
  include Sorting
end