require("pry")
# continue continue l'execution
# next prochaine commande ligne
# exit quit

def bubble_sort(arr)
  # initialiser previous arr[i] current = arr[i+1]
  i = 0
  previous = arr[i]
  current = arr[i + 1]
  while i < arr.length - 1
    if previous > current
      arr = swap(from: i, to: i + 1, arr: arr)
      binding.pry
    else
      i = i + 1
      previous = arr[i]
      current = arr[i + 1]
    end
  end
end



def swap(from:, to:, arr:)
  # on store la valeur d'origine
  store = arr[from]
  #  on swape les deux valeurs
  arr[from] = arr[to]
  arr[to] = store
  arr
end

sequence = [4, 3, 5, 0, 1]
swaps = 0

bubble_sort(sequence)

# Your Code Here

puts "Final result: #{result}"
puts "Swaps: #{swaps}"
