context("Testing Box-Cox transforms")

test_that("lambda = 0 case", {
    x <- c(3, 15, 20, 7)
    lambda <- 0
    expect_equal(boxcox(x, lambda), log(x))
})

test_that("lambda = 1 case", {
    x <- c(1, 2, 42, 31)
    lambda = 1;
    expect_equal(boxcox(x, lambda), x-1)
})

test_that("lambda = 10 case", {
    x <- c(15, 2, 31, 2)
    lambda = 10;
    expect_equal(boxcox(x, lambda), (x^10-1)/10)
})

test_that("lambda = -4 case", {
    x <- c(6,32,5,1,42,2)
    lambda = -4;
    expect_equal(boxcox(x, lambda), (c(6,32,5,1,42,2)^(-4)-1)/(-4))
})

test_that("test with output explicitly defined", {
    x <- c(3,4,5)
    lambda = -1;
    expect_equal(boxcox(x, lambda), c(2/3,3/4,4/5))
})
