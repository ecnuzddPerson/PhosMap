#' Get filtered foreground data frame that its aligned sequences with specific motif.
#'
#' @param foreground_sequences_mapped_to_motifs A list that consists of motifs and its corresponding aligned sequences.
#' @param foreground A vector for aligned sequences.
#' @param foreground_df A data frame from the initial foreground data frame.
#'
#' @author Dongdong Zhan and Mengsha Tong
#'
#'
#' @return A data frame that its aligned sequences with specific motif.
#' @export
#'
#' @examples
#' \dontrun{
#' foreground_df_mapped_to_motifs <- get_foreground_df_to_motifs(
#'   foreground_sequences_mapped_to_motifs,
#'   foreground,
#'   foreground_df
#' )
#' }

get_foreground_df_to_motifs <- function(foreground_sequences_mapped_to_motifs, foreground, foreground_df){
  cat('\n', 'Find data frame in foreground that are mapped to specific motif. \n')
  formatted_output_vector <- NULL
  foreground_sequences_mapped_to_motifs_len <- length(foreground_sequences_mapped_to_motifs)
  for(i in seq_len(foreground_sequences_mapped_to_motifs_len)){
    mapped_seq <- foreground_sequences_mapped_to_motifs[[i]]
    formatted_output_vector <- c(formatted_output_vector, mapped_seq)
  }
  index_of_match <- match(formatted_output_vector, foreground)
  foreground_df_mapped_to_motifs <- foreground_df[index_of_match,]
  return(foreground_df_mapped_to_motifs)
}
