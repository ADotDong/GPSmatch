% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sigEvl.R
\name{sigEvl}
\alias{sigEvl}
\title{Computes the p-value and pi-scores for top ten hits from GPSmatch_nt()}
\usage{
sigEvl(n, genome, bed1, bed1_jaccard_output, database_dir, output_path)
}
\arguments{
\item{n}{The number of background files generated in order to compute the p-value. As the n increases, the p-value will become more reliable, but the user should be aware that this will significantly increase the computing time. We have set a default n of 100.}

\item{genome}{The file path of a genome file, which should be tab delimited and structured as follows: <chromName><TAB><chromSize>. A pre-formatted hg19 genome file can be found on the Github.}

\item{bed1}{The file path of a query bed file to be compared to the database files.}

\item{bed1_jaccard_output}{The file path of the output file generated from the GPSmatch_nt() function}

\item{output_path}{The file path where the output .csv file will be generated.}

\item{folder_dir}{The directory of a folder containing database files to be used for comparison with the query file.}
}
\value{
A dataframe that shows the similarities of the query file to the database files ranked from greatest to least, tailored to user method specification.
}
\description{
The function evaluates the significance of the jaccard scores by calculating p-values and pi-scores.
}
\examples{
rankBedSimilarity(100, "/dir/genome-file.txt", "/dir/bed1.txt","/dir/bed1_jaccard_output.txt","/dir/database_dir","/dir/output_path")
}
