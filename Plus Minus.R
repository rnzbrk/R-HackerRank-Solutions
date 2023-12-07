
plusMinus <- function(arr) {
  pos <- 0
  neg <- 0
  zero <- 0

  for (i in seq_along(arr)) {
    if (arr[i] > 0) {
      pos <- pos + 1
    } else if (arr[i] < 0) {
      neg <- neg + 1
    } else {
      zero <- zero + 1
    }
  }

  cat(sprintf("%.6f\n", pos / length(arr)))
  cat(sprintf("%.6f\n", neg / length(arr)))
  cat(sprintf("%.6f\n", zero / length(arr)))
}

stdin <- file('stdin')
open(stdin)

n <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))

arr <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
arr <- as.integer(arr)

plusMinus(arr)

close(stdin)
