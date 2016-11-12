greet2 <- function(name) {
  print(paste0("how are you, ", name, "?"))
}

bye <- function() {
  print("ok bye!")
}

greet <- function(name) {
  print(paste0("hello, ", name, "!"))
  greet2(name)
  print("getting ready to say bye...")
  bye()
}

greet("adit")
