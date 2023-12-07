
#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

breakingRecords <- function(scores) {
  current_hi <- scores[1]
  current_low <- scores[1]
  hi_count <- 0
  low_count <- 0
  
  for (score in scores) {
    if (score > current_hi) {
      current_hi <- score
      hi_count <- hi_count + 1
    } else if (score < current_low) {
      current_low <- score
      low_count <- low_count + 1
    }
  }
  
  return(c(hi_count, low_count))
}

stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

n <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))

scores <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
scores <- as.integer(scores)

result <- breakingRecords(scores)

writeLines(paste(result, collapse = " "), con = fptr)

close(stdin)
close(fptr)
