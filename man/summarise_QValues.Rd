% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyMS_R6_TransitionCorrelations.R
\name{summarise_QValues}
\alias{summarise_QValues}
\title{Compute QValue summaries for each precursor or peptide or protein}
\usage{
summarise_QValues(pdata, config)
}
\arguments{
\item{pdata}{data.frame}

\item{config}{configuration}

\item{data}{data}
}
\value{
data.frame
}
\description{
adds two columns srm_QValueMin - nth smallest qvalue for each precursor
srm_QValueNR - nr of precursors passing the threshold
}
\examples{
dd <- prolfqua_data('data_spectronautDIA250_A')
config <- dd$config_f()
analysis <- dd$analysis(dd$data,config)
res <- summarise_QValues(analysis, config)
stopifnot(c("srm_QValueMin", "srm_QValueNR") \%in\% colnames(res))
hist(unique(res$srm_QValueMin))
hist(unique(res$srm_QValueNR))

}
\keyword{internal}
