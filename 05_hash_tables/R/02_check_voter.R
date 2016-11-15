library("hash")
voted <- hash()
check_voter <- function(name) {
  if (has.key(name, voted)) {
    print("kick them out!")
  } else {
    voted[name] <- TRUE
    print("let them vote!")
  }
}

check_voter("tom")
check_voter("mike")
check_voter("mike")
