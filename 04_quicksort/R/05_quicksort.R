quicksort <- function(array) {
  if (length(array) < 2) {
    # base case, arrays with 0 or 1 element are already "sorted"
    return(array)
  } else {
    # recursive case
    pivot <- array[1]
    # sub-array of all the elements less than the pivot
    less <- array[array <= pivot][-1]
    # sub-array of all the elements greater than the pivot
    greater <- array[array > pivot]
    return(c(quicksort(less), pivot, quicksort(greater)))
  }
}

print(quicksort(c(10, 5, 2, 3)))
