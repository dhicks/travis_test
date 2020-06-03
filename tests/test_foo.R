source("../scripts/foo.R", chdir = TRUE)
library(testthat)

test_that("foo is 2", {
    expect_equal(foo, 2)
})
