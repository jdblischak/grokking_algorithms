library("rstackdeque")
library("hash")

person_is_seller <- function(name) {
  len <- nchar(name)
  return(substr(name, len, len) == "m")
}

graph <- hash()
graph["you"] <- c("alice", "bob", "claire")
graph["bob"] <- c("anuj", "peggy")
graph["alice"] <- c("peggy")
graph["claire"] <- c("thom", "jonny")
graph["anuj"] <- character()
graph["peggy"] <- character()
graph["thom"] <- character()
graph["jonny"] <- character()

search <- function(name) {
  search_queue <- rdeque()
  for (n in graph[[name]]) {
    search_queue <- insert_back(search_queue, n)
  }

  # This array is how you keep track of which people you've searched before.
  searched <- character()
  while (length(search_queue) > 0) {
    person <- peek_front(search_queue)
    search_queue <- without_front(search_queue)
    # Only search this person if you haven't already searched them.
    if (!(person %in% searched)) {
      if (person_is_seller(person)) {
        print(paste(person, "is a mango seller!"))
        return(TRUE)
      } else {
        for (n in graph[[person]]) {
          search_queue <- insert_back(search_queue, n)
        }
        # Marks this person as searched
        searched <- c(searched, person)
      }
    }
  }
  return(FALSE)
}

search("you")
