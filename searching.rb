# linear search


def linear_search(array, targeted_values)
  i = 0
  while i < array.length
    $count = $count +  1
    return i if array[i] == targeted_values

    i += 1
  end
  'Not Found'
end

def binary_search(array, targeted_value)

  $count = $count +  1
  idx_middle = (array.length / 2).floor

  if array[idx_middle] == targeted_value
    return targeted_value       
  elsif array[idx_middle] < targeted_value
    return binary_search(array[(idx_middle+1)...], targeted_value)
  else
    return binary_search(array[...(idx_middle)], targeted_value)
  end
  "Not Found"
end 

array = Array.new(5000) { rand(1..5000) }
target = 8
$count = 0

linear_search(array, target)
puts "linear searching - Find with: #{$count}"

$count = 0
array.sort!
binary_search(array, target)

puts "Binary searching - Find with: #{$count}"




