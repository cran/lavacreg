% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/creg_input.R
\name{is_count}
\alias{is_count}
\title{Check for count variable}
\usage{
is_count(x, tol = .Machine$double.eps^0.5)
}
\arguments{
\item{x}{vector to be checked}

\item{tol}{Tolerance}
}
\value{
Function returns logical value indicating whether x can be considered
a count variable or not.
}
\description{
Checks if the variable is a count variable
}
