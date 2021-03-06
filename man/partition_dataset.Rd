% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{partition_dataset}
\alias{partition_dataset}
\title{Partition synthetic dataset to training and test set}
\usage{
partition_dataset(dt_obj, data_train_prcg = 0.5,
  region_train_prcg = 0.95, cpg_train_prcg = 0.5, is_synth = FALSE)
}
\arguments{
\item{dt_obj}{Melissa data object}

\item{data_train_prcg}{Percentage of genomic regions that will be fully used
for training, i.e. across the whole region we will have no CpGs missing.}

\item{region_train_prcg}{Fraction of genomic regions to keep for training
set, i.e. some genomic regions will have no coverage at all during
training.}

\item{cpg_train_prcg}{Fraction of CpGs in each genomic region to keep for
training set.}

\item{is_synth}{Logical, whether we have synthetic data or not.}
}
\value{
The Melissa object with the following changes. The `met` element will
  now contain only the `training` data. An additional element called
  `met_test` will store the data that will be used during testing to evaluate
  the imputation performance. These data will not be seen from Melissa during
  inference.
}
\description{
Partition synthetic dataset to training and test set
}
\examples{
# Partition the synthetic data from Melissa package
dt <- partition_dataset(melissa_encode_dt)

}
\seealso{
\code{\link{create_melissa_data_obj}}, \code{\link{melissa}},
\code{\link{filter_regions}}
}
\author{
C.A.Kapourani \email{C.A.Kapourani@ed.ac.uk}
}
