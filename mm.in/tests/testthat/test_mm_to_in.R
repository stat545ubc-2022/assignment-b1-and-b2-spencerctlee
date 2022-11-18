mm_test_1 <- digest::digest(mm_to_in(124))
mm_test_2 <- digest::digest(mm_to_in(121.12))
mm_test_3 <- digest::digest(mm_to_in(NA))

test_that("Testing mm_to_in function",{
  expect_equal(
    digest::digest(mm_to_in(124)),
    mm_test_1)
})
# expect_equal test comparing value with no decimal places to digested input

test_that("Testing mm_to_in function",{
  expect_equal(
    digest::digest(mm_to_in(121.12)),
    mm_test_2)
})
# expect_equal test comparing value with decimal places to digested input


test_that("Testing mm_to_in function",{
  expect_equal(
    digest::digest(mm_to_in(NA)),
    mm_test_3)
})
# expect_equal test comparing value with NA value to digested input
