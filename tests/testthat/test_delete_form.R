library(testthat)
library(mockery)

context("add-update-delete-forms.R")

test_that("delete_form deletes the correct form", {

  m <- mock(TRUE, cycle=TRUE)
  stub(delete_form, "rest_delete", m)

  #Test coverage:
  #true cases
  expect_true(delete_form("", 1))
  expect_true(delete_form("", 12))
  expect_true(delete_form("", 10000))

  #false cases
  expect_error(delete_form("", 0))
  expect_error(delete_form("", "x"))
  expect_error(delete_form("", -1))
  expect_error(delete_form("", "syn123"))
  expect_error(delete_form("", Inf))
  expect_error(delete_form("", ""))
  })
