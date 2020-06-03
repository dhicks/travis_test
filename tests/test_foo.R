source("../scripts/foo.R", chdir = TRUE)
library(testthat)

test_that("foo is 2", {
    expect_identical(foo, 2)
})

test_that("foo is 3", {
    expect_identical(foo, 3)
})
