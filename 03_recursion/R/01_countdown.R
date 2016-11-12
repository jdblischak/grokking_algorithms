countdown <- function(i) {
  print(i)
  # base case
  if (i <= 0) {
    return(invisible())
  }
  # recursive case
  else {
    countdown(i-1)
  }
}

countdown(5)
