% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{system_file}
\alias{system_file}
\title{case sensitive version of system.file}
\usage{
system_file(x, package = "prolfqua")
}
\description{
case sensitive version of system.file
}
\examples{
testthat::expect_error(system_file("samples/maxquant_txt/tiny2.ZIP"))
system_file("samples/maxquant_txt/tiny2.zip")

}
