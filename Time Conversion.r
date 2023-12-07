#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

timeConversion <- function(s) {
    format(strptime(s, "%I:%M:%S %p"), "%H:%M:%S")

}

stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

s <- readLines(stdin, n = 1, warn = FALSE)

result <- timeConversion(s)

writeLines(result, con = fptr)

close(stdin)
close(fptr)
