max <- function(list) {
  if (length(list) == 2) {
    return(if (list[1] > list[2]) list[1] else list[2])
  }
  sub_max <- max(list[-1])
  return(if (list[1] > sub_max) list[1] else sub_max)
}
