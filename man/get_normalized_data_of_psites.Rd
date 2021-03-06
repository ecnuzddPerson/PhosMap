% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_normalized_data_of_psites.R
\name{get_normalized_data_of_psites}
\alias{get_normalized_data_of_psites}
\title{To normalize data and filter data only including phosphorylation sites.}
\usage{
get_normalized_data_of_psites(data_frame, experiment_code_file_path,
  topN = NA, mod_types = c("S", "T", "Y"))
}
\arguments{
\item{data_frame}{A data frame containing IDs and quantification values merged from multi-experiments as input.}

\item{experiment_code_file_path}{A file path of storing experiment codes as input. The experiment codes are required to keep pace with column names of Value.}

\item{topN, }{A numeric value, selecting N p-sites with high intensity rank for normalization, the default is NA.}

\item{mod_types, }{A vector for modification residues, the default is c('S', 'T', 'Y') for phosphorylation modifications.}
}
\value{
A list including data frame after filtering or normalization (x 1e5).
}
\description{
To normalize data and filter data only including phosphorylation sites.
}
\examples{
\dontrun{
ptypes_df = get_normalized_data_of_psites(data_frame, experiment_code_file_path, topN = 500)
}
}
