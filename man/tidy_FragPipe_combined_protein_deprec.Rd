% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyMSFragger.R
\name{tidy_FragPipe_combined_protein_deprec}
\alias{tidy_FragPipe_combined_protein_deprec}
\title{FragPipe read FragPipe combined protein files up to Version 15}
\usage{
tidy_FragPipe_combined_protein_deprec(
  combprot,
  intnames = c("total.intensity", "unique.intensity", "razor.intensity",
    "total.ion.count", "unique.ion.count", "razor.ion.count", "total.spectral.count",
    "unique.spectral.count", "razor.spectral.count"),
  protIDcol = "protein.group",
  subgroup = "subgroup",
  as_list = FALSE
)
}
\arguments{
\item{combprot}{path to combined_protein.tsv file}

\item{intnames}{intensity column prefix}

\item{protIDcol}{default protein.group}

\item{subgroup}{default subgroup}
}
\description{
FragPipe read FragPipe combined protein files up to Version 15
}
\examples{

prottsv <- system_file("samples/FragPipe/combined_protein_small.tsv",
package = "prolfqua")
prot <- tidy_FragPipe_combined_protein_deprec(prottsv)
stopifnot( dim(prot) ==c(19980,27))
}
\seealso{
Other FragPipe: 
\code{\link{FragPipe}},
\code{\link{INTERNAL_FUNCTIONS_BY_FAMILY}},
\code{\link{tidy_FragPipe_MSstats_csv}()},
\code{\link{tidy_FragPipe_combined_protein}()}
}
\concept{FragPipe}
\keyword{internal}
