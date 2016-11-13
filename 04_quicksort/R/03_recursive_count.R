count <- function(list) {
  # R is not able to test for equality with the empty vector in the same way as
  # Python: list == numeric(0) returns logical(0) if the variable list is empty.
  # `if` requires a a logical vector of length 1 as input. The standard way to
  # check for an empty vector is to check its length (see link below), but it is
  # awkward to check the length of a vector in each call of a recursive function
  # that is calculating the length of the vector. The hack below works without
  # using `length`.
  # http://r.789695.n4.nabble.com/how-to-test-for-the-empty-set-td875237.html
  if (is.na(list[1])) {
    return(0)
  }
  return(1 + count(list[-1]))
}
