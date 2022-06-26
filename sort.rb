require 'unicode_plot'
require 'pry-byebug'

$array = [55, 13, 4, 5, 3, 1, 8, 12, 0, 5, 6, 30]

def selecting_sort
  array = $array
  for i in (0..array.length - 1)
    min_idx = i

    for j in (i + 1..array.length - 1)
      min_idx = j if array[min_idx] > array[j]
    end

    old = array[i]
    new = array[min_idx]
    array[i] = new
    array[min_idx] = old
    draw('selecting_sort', array)
  end
end

def bubble_sort
  array = $array
  swap_counter = -1

  while swap_counter != 0
    swap_counter = 0
    for idx in (0..array.length - 1)
      next unless idx < array.length - 1 && (array[idx] > array[idx + 1])

      swap_counter += 1
      old = array[idx]
      new = array[idx + 1]

      array[idx] = new
      array[idx + 1] = old
    end
    draw('buddle_sort', array)
  end
end

def quick_sort; end

def merge_array(left_array, right_array)
  return left_array if right_array.empty?

  return right_array if left_array.empty?

  smallest_number = if left_array.first <= right_array.first
                      left_array.shift
                    else
                      right_array.shift
                    end

  recursive = merge_array(left_array, right_array)
  p recursive
  [smallest_number].concat(recursive)
end

def merge_sort(elements)
  return elements if elements.length <= 1

  array_length = elements.length

  half_array = (array_length / 2).round

  left = elements.take(half_array)
  right = elements.drop(half_array)

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge_array(sorted_left, sorted_right)
end

def draw(title, data_array)
  data = {}

  for value in data_array
    data[value] = value
  end

  system('clear')
  UnicodePlot.barplot(data: data, title: title).render
  sleep(1)
end

# bubble_sort
# selecting_sort
#
array = merge_sort($array)
puts array
