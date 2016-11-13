sum <- function(list) {
  if (length(list) == 0) {
    return(0)
  }
  return(list[1] + sum(list[-1]))
}
