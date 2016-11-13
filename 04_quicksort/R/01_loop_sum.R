sum <- function(arr) {
  total <- 0
  for (x in arr) {
    total <- total + x
  }
  return(total)
}

print(sum(c(1, 2, 3, 4)))
