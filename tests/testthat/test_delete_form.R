#' Delete a form
#'
#' Delete a form from the database, and caller must
#' have SUBMIT privileges in formGroup ACL.
#'
#' @export
#' @inheritParams get_submissions_metadata
#' @inheritParams submit_form_for_review
#' @return None
#'
# delete_form <- function(syn, form_data_id) {
#   uri <- glue::glue("https://repo-prod.prod.sagebase.org/repo/v1/form/data/{form_data_id}") # nolint
#   rest_delete(syn = syn, uri = uri)
# }


library(testthat)
install.packages("mockery")
library(mockery)

test_that("delete_form deletes the correct form", {

  m <- mock(TRUE)
  stub(delete_form, "rest_delete", m)
  result <- delete_form(syn = "", form_data_id = 1)
  expected_uri <- "https://repo-prod.prod.sagebase.org/repo/v1/form/data/1"
  expect_args(m, 1, "", expected_uri)
  expect_true(result)

})

## Q1. how can I increase test coverage?  i.e. test for "x" being an invalid input (#for (i in c(1,2,4,"x")))
## Q2. how is this different from testing if glue is working correctly?

