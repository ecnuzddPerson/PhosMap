% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalize_phos_data_to_profiling.R
\name{normalize_phos_data_to_profiling}
\alias{normalize_phos_data_to_profiling}
\title{Normalize phospho-data to profiling}
\usage{
normalize_phos_data_to_profiling(phospho_data_normalized,
  profiling_data_normalized, phosphorylation_exp_design_info_file_path,
  profiling_exp_design_info_file_path, control_label = NA,
  pair_flag = FALSE)
}
\arguments{
\item{phospho_data_normalized}{A data frame of phospho-data after normalization}

\item{profiling_data_normalized}{A data frame of profiling after normalization}

\item{phosphorylation_exp_design_info_file_path}{A file path about phosphorylation experiment design, it has 2 kinds of file configuration as follows:
1. experiment_design_noPair.txt must contain columns of Experiment_Code, Group.
2. experiment_design_Pair.txt must contain columns of Experiment_Code, Group, and Pair. (Pair: 1 -> case, -1 -> control)}

\item{profiling_exp_design_info_file_path}{A file path about profiling experiment design, it has 2 kinds of file configuration as same as phosphorylation_exp_design_info_file_path.}

\item{control_label}{A string represents label of control group. The default is NA which shows no control group.}

\item{pair_flag}{A boolean value represents whether experiments have pairs. The default is FALSE which shows no pairs.}
}
\value{
A data frame which comes from results that phospho-data is normalizated base on the abundance of proteins in the profiling experiments.
}
\description{
Normalize phospho-data to profiling
}
\examples{
\dontrun{
df_phospho_Value_vs_profiling = normalize_phos_data_to_profiling(
  phospho_data_normalized,
  profiling_data_normalized,
  experiment_design_file_path,
  control_label = NA,
  pair_flag = FALSE
)
}
}
