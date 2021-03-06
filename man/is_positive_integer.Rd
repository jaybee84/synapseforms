% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{is_positive_integer}
\alias{is_positive_integer}
\title{Check that a value is a positive integer}
\usage{
is_positive_integer(data)
}
\arguments{
\item{data}{A single value to check whether it is a positive integer.}
}
\value{
`TRUE`` if data is an integer or a string that is coercible to a
positive integer; else `FALSE`
}
\description{
Check that a value is a positive integer. If the value is a string, will
return `TRUE` if it can be coerced to a positive integer.
}
