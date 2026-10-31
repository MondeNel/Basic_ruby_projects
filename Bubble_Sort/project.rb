# First, we define a method called bubble_sort that takes an array as an argument.
def bubble_sort(array)
  # Second, we set sorted to false.
  # This tells us that we need to check the array.
  sorted = false

  # Third, we keep looping until sorted becomes true.
  until sorted
    # At the start of each pass, we assume the array is sorted.
    sorted = true

    # Fourth, look at each number and the number right after it.
    # The last number has no next number, so stop at the second-last index.
    (array.length - 1).times do |index|
      # If the current number is bigger than the next number, swap them.
      next unless array[index] > array[index + 1]

      array[index], array[index + 1] = array[index + 1], array[index]

      # We made a swap, so the array was not sorted yet.
      sorted = false
    end
  end

  # Fifth, we return the sorted array.
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]