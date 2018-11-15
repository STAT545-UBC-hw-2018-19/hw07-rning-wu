#' Box-Cox Transform
#'
#' This function applies the Box-Cox transformation on a vector.
#'
#' @param x The vector to be transformed. Note that x must be a positive vector.
#' @param lambda The power used in the transformation
#' @param plot Display a plot of \code{x} vs the output? Use logical.
#' \code{FALSE} by default.
#'
#' @return
#' A vector that is the transformed results of \code{x}. Plots the data if \code{plot} is \code{TRUE}.
#'
#' @rdname boxcox
#' @export
boxcox <- function(x, lambda, plot = FALSE) {
    if (lambda == 0) {
        res = log(x)
    } else {
        res = (x^lambda - 1)/lambda
    }

    if (plot) {
        print(ggplot2::qplot(x, res))
    }

    return(res)
}
