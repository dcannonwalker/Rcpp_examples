# optimization

# Algorithm 1 -------------------------------------------------------------
# Approximate gradient based on fixed delta
# Stopping criterion is change in objective function below fixed cutoff
# Fixed learning rate 
# No safety

#' @param `f()` a real-valued function defined on the reals 
minimize1 <- function(f, x0 = 0, cutoff = 1e-15, 
                      delta = 1e-10, gamma = 1e-4) {
    x <- x0
    change <- cutoff + 1
    
    while(change > cutoff) {
        gradient <- gradient1(f, x, delta = delta)
        y <- x - gradient * gamma
        change <- abs(f(x) - f(y))
        x <- y
    }
    
    x
}

gradient1 <- function(f, x, delta) {
    (f(x + delta / 2) - f(x - delta / 2)) / delta
}

f <- function(x) (x + 1)^2 + 5

minimize1(f, x0 = 5)
