divisibleSumPairs <- function(n, k, ar) {
  result <- list()
    for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      pair_sum <- ar[i] + ar[j]
      if (pair_sum %% k == 0) {
        result <- append(result, list(c(ar[i], ar[j])))
        n_tot <- length(result)
      }
    }
  }
  
  return(n_tot)
}
 
