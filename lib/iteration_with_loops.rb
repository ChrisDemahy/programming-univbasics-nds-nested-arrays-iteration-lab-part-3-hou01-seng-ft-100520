require 'pry'
def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  # Create indexes
  row = 0
  test_count = 0
  # array to store results
  results = []

  # Traverse arrays
  while row < src.length do
    column = 0
    while column < src[row].length do
      test_count += 1
      if src[row][column].is_a?(String)
        results << src[row][column]
      end
      column += 1
    end
    row += 1
  end
  results.join(" ")
end
