# Fibonacci #1
# return the sequence to its 'n'th element
fib1 <- function(n) {
    f <- c(0, 1) 
    for (i in seq(3, n)) {
        f[i] <- f[i - 1] + f[i - 2]
    }
    f
}

# Fibonacci #2
# return the 'n'th element of the sequence
fib2 <- function(n) {
    if (n == 0) out <- 0
    if (n == 1) out <- 1
    else if (n > 1) {
        out <- fib2(n - 1) + fib2(n - 2)
    }
    
    out
}

