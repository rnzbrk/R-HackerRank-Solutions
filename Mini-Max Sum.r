
miniMaxSum <- function(arr) {
p_low <- sort(arr, decreasing =FALSE)[1:4]
p_high <- sort(arr, decreasing =TRUE)[1:4]
p_low_s <- sum(p_low)
p_high_s <- sum(p_high)
cat(p_low_s, p_high_s)

}

stdin <- file('stdin')
open(stdin)

arr <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
arr <- as.integer(arr)

miniMaxSum(arr)

close(stdin)
