def bubble_sort(arr)
  # initialiser previous arr[i] current = arr[i+1]
  swaps = 0
  i = 0
  current, previous = arr[1], arr[0]
  while i < arr.length - 1
    print "#{arr} #{previous} #{current}"
    if previous > current
      print ' Y '
      swaps += 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
      current, previous = arr[1], arr[0]
    else
      print ' N '
      i += 1
      previous = arr[i]
      current = arr[i + 1]
    end
    print "#{arr}\n"
  end
  [swaps, arr]
end

sequence = [4, 3, 5, 0, 1]
swaps, result = bubble_sort(sequence)

puts "Final result: #{result}"
puts "Swaps: #{swaps}"
