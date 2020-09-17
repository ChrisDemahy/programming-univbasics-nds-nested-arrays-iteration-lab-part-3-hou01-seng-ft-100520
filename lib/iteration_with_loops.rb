require 'pry'
def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  # Create indexe
  row = 0
  # array to store results
  results = []

  # Traverse arrays
  while row < src.length do
    # Create column index
    column = 0

    while column < src[row].length do
      # if element is a string add it to results
      if src[row][column].is_a?(String)
        results << src[row][column]
      end
      column += 1
    end
    row += 1
  end
  # Return results as a string seperated by spaces
  results.join(" ")
end
