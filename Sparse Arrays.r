
#
# Complete the 'matchingStrings' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. STRING_ARRAY strings
#  2. STRING_ARRAY queries
#

matchingStrings <- function(strings, queries) {
  counts <- numeric(length(queries))
  
  for (i in seq_along(queries)) {
    counts[i] <- sum(strings == queries[i])
  }
  return(counts)
}

stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

stringsCount <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))
strings <- readLines(stdin, n = stringsCount, warn = FALSE)

queriesCount <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))
queries <- readLines(stdin, n = queriesCount, warn = FALSE)

res <- matchingStrings(strings, queries)

writeLines(paste(res, collapse = "\n"), con = fptr)

close(stdin)
close(fptr)
