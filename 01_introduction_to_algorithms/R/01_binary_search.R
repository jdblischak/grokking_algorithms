# Note that R uses 1-based indexing, not 0-based indexing like Python, so the
# code and results are modifed to reflect this.
binary_search <- function(list, item) {
  # low and high keep track of which part of the list you'll search in.
  low <- 1
  high <- length(list)

  # While you haven't narrowed it down to one element ...
  while (low <= high) {
    # ... check the middle element
    mid <- (low + high) %/% 2
    guess <- list[mid]
    # browser()
    # Found the item.
    if (guess == item) {
      return(mid)
    }
    # The guess was too high.
    if (guess > item) {
      high <- mid - 1
    }
    # The guess was too low.
    else {
      low <- mid + 1
    }
  }
  # Item doesn't exist
  return(NULL)
}

my_list <- c(1, 3, 5, 7, 9)
print(binary_search(my_list, 3)) # => 2

# 'None' means nil in Python. We use to indicate that the item wasn't found.
print(binary_search(my_list, -1)) # => None
