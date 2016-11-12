# Note that R uses 1-based indexing, not 0-based indexing like Python, so the
# code and results are modifed to reflect this.

# Finds the smallest value in an array
findSmallest <- function(arr) {
  # Stores the smallest value
  smallest <- arr[1]
  # Stores the index of the smallest value
  smallest_index <- 1
  for (i in seq_along(arr)[-1]) {
    if (arr[i] < smallest) {
      smallest <- arr[i]
      smallest_index <- i
    }
  }
  return(smallest_index)
}

# Sort array
selectionSort <- function(arr) {
  # Pre-allocate the vector b/c object growth is prohibitively slow in R
  newArr <- numeric(length = length(arr))
  for (i in 1:length(arr)) {
      # Finds the smallest element in the array and adds it to the new array
      smallest <- findSmallest(arr)
      # R does not have a `pop`-like function, so insert and delete in two steps
      newArr[i] <- arr[smallest]
      arr <- arr[-smallest]
  }
  return(newArr)
}

print(selectionSort(c(5, 3, 6, 2, 10)))
