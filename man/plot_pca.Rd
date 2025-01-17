% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyMS_plotting.R
\name{plot_pca}
\alias{plot_pca}
\title{plot PCA}
\usage{
plot_pca(data, config, add_txt = FALSE, plotly = FALSE)
}
\description{
plot PCA
}
\examples{



istar <- prolfqua_data('data_ionstar')$filtered()
stopifnot(nrow(istar$data) == 25780)
config <- old2new(istar$config$clone(deep=TRUE))
analysis <- istar$data

tmp <- plot_pca(analysis, config, add_txt= TRUE)

print(tmp)
tmp <- plot_pca(analysis, config, add_txt= FALSE)
print(tmp)
plotly::ggplotly(tmp, tooltip = config$table$sampleName)

}
\seealso{
Other plotting: 
\code{\link{ContrastsPlotter}},
\code{\link{INTERNAL_FUNCTIONS_BY_FAMILY}},
\code{\link{UpSet_interaction_missing_stats}()},
\code{\link{UpSet_missing_stats}()},
\code{\link{medpolish_estimate_df}()},
\code{\link{missigness_histogram}()},
\code{\link{missingness_per_condition_cumsum}()},
\code{\link{missingness_per_condition}()},
\code{\link{plot_NA_heatmap}()},
\code{\link{plot_estimate}()},
\code{\link{plot_heatmap_cor}()},
\code{\link{plot_heatmap}()},
\code{\link{plot_hierarchies_add_quantline}()},
\code{\link{plot_hierarchies_boxplot_df}()},
\code{\link{plot_hierarchies_line_df}()},
\code{\link{plot_hierarchies_line}()},
\code{\link{plot_intensity_distribution_violin}()},
\code{\link{plot_raster}()},
\code{\link{plot_sample_correlation}()}
}
\concept{plotting}
\keyword{internal}
