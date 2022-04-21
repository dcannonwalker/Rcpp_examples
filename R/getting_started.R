# The 'getting started' way

library(Rcpp)

isOddR <- function(n) {
    n %% 2L == 1L
}

isOddR(43)

# `Rcpp::cppFunction()`
cppFunction("
            bool isOddCpp(int n) {
                bool result = (n % 2 == 1);
            return result;
            }")

isOddCpp(43)
