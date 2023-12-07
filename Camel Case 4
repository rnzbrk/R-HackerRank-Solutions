camel_case <- function(input) {
  results <- character(length(input))
  for (line in input) {
    parts <- strsplit(line, ";")[[1]]
    operation <- parts[1]
    type <- parts[2]
    words <- parts[3]

    if (operation == "S") {
      if (type == "M") {
        words <- gsub("(?<=[a-z])(?=[A-Z])", " ", words, perl = TRUE)
        words <- tolower(words)
        words <- sub("\\(\\)$", "", words)
        results[which(input == line)] <- words
      } else if (type == "C"){
        words <- gsub("(?<=[a-z])(?=[A-Z])", " ", words, perl = TRUE)
        words <- tolower(words)
        results[which(input == line)] <- words
      } else {
        words <- gsub("(?<=[a-z])(?=[A-Z])", " ", words, perl = TRUE)
        words <- tolower(words)
        results[which(input == line)] <- words
      }
      
    } else if (operation == "C") {
      if (type == "M") {
        words <- strsplit(tolower(words), " ")[[1]]
        words <- paste0(c(substr(words[1], 1, 1), toupper(substr(words[-1], 1, 1))), 
                        substr(words, 2, nchar(words)))
        words <- paste(words, collapse = "")
        words <- paste0(words, "()")
        results[which(input == line)] <- words
      } else if (type == "C"){
        words <- strsplit(tolower(words), " ")[[1]]
        words <- paste0(toupper(substr(words, 1, 1)),substr(words, 2, nchar(words)))
        words <- paste(words, collapse = "")
        results[which(input == line)] <- words
      } else {
        words <- strsplit(tolower(words), " ")[[1]]
        words <- paste0(c(substr(words[1], 1, 1), toupper(substr(words[-1], 1, 1))), 
                        substr(words, 2, nchar(words)))
        words <- paste(words, collapse = "")
        results[which(input == line)] <- words
      }
    } else {
      results[which(input == line)] <- "Error"
    }
  }
  return(noquote(results))
}

stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

s <- readLines(stdin, warn = FALSE)

result <- camel_case(s)

writeLines(result, con = fptr)

close(stdin)
close(fptr)
