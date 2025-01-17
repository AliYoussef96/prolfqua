% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyMS_aggregation.R
\name{rlm_estimate_dfconfig}
\alias{rlm_estimate_dfconfig}
\title{Estimate protein abundance from peptide abundances using MASS::rlm}
\usage{
rlm_estimate_dfconfig(pdata, config, name = FALSE)
}
\arguments{
\item{pdata}{data.frame}

\item{config}{\code{\link{AnalysisConfiguraton}}}
}
\description{
Estimate protein abundance from peptide abundances using MASS::rlm
}
\examples{

bb <- prolfqua_data('data_ionstar')$filtered()
conf <- old2new(bb$config)
data <- bb$data
conf$table$hierarchyDepth = 1
xnested <- data |>
  dplyr::group_by_at(conf$table$hierarchy_keys_depth()) |> tidyr::nest()

feature <- setdiff(conf$table$hierarchy_keys(),  conf$table$hierarchy_keys_depth())
x <- xnested$data[[1]]
bb <- rlm_estimate_dfconfig(x, conf)

prolfqua:::.reestablish_condition(x,bb, conf)

}
\seealso{
\code{\link{rlm_estimate}}

Other aggregation: 
\code{\link{INTERNAL_FUNCTIONS_BY_FAMILY}},
\code{\link{aggregate_intensity_topN}()},
\code{\link{estimate_intensity}()},
\code{\link{intensity_summary_by_hkeys}()},
\code{\link{medpolish_estimate_dfconfig}()},
\code{\link{medpolish_estimate_df}()},
\code{\link{medpolish_estimate}()},
\code{\link{medpolish_protein_estimates}()},
\code{\link{plot_estimate}()},
\code{\link{plot_hierarchies_add_quantline}()},
\code{\link{plot_hierarchies_line_df}()},
\code{\link{plot_hierarchies_line}()},
\code{\link{rlm_estimate}()}
}
\concept{aggregation}
\keyword{internal}
