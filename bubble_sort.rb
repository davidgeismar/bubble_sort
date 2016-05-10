def bubble_sort(arr)
  # initialiser arr[i] arr[i] arr[i + 1] = arr[i+1]
  swaps = 0
  i = 0
  while i < arr.length - 1
    print "#{arr} #{arr[i]} #{arr[i + 1]}"
    if arr[i] > arr[i + 1]
      print ' Y '
      swaps += 1
      # la fameuse assignation parallèle, qui permet (entre autres!) d'échanger deux valeurs 
      # sans créer une troisième variable temporaire
      # le principe: 
      # var1, var2 = var2, var1 
      # intervertit les valeurs de var1 et var2
      arr[i], arr[i + 1] = arr[i + 1], arr[i] 
      i = 0
      # arr[i + 1], arr[i] = arr[1], arr[0]
    else
      print ' N '
      i += 1
    end
    print "#{arr}\n"
  end
  [swaps, arr]
end

sequence = [4, 3, 5, 0, 1]
swaps, result = bubble_sort(sequence)

puts "Final result: #{result}"
puts "Swaps: #{swaps}"
