% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sachs.R
\docType{data}
\name{sachs}
\alias{sachs}
\title{Sachs multiparameter flow cytometry data and consensus model}
\format{
"sachs" is a list of 5 objects:
\enumerate{
\item "rawdata", a list of 14 data.frames containing raw flow cytometry
data (Sachs et al., 2005);
\item "graph", consensus signaling network;
\item "model", consensus model (lavaan syntax);
\item "pkc", data.frame of 1766 samples and 11 variables, containing
cd3cd28 (baseline) and pma (PKC activation) data;
\item "group", a binary group vector, where 0 is for cd3cd28 samples
(n = 853) and 1 is for pma samples (n = 913).
\item "details", a data.frame containing dataset information.
}
}
\source{
\doi{10.1126/science.1105809}
}
\usage{
sachs
}
\description{
Flow cytometry data and causal model from Sachs et al. (2005).
}
\examples{
# Dataset content
names(sachs$rawdata)
dim(sachs$pkc)
table(sachs$group)
cat(sachs$model)
gplot(sachs$graph)

}
\references{
Sachs K, Perez O, Pe'er D, Lauffenburger DA, Nolan GP (2019).
Causal Protein-Signaling Networks Derived from Multiparameter
Single-Cell Data. Science, 308(5721): 523-529.
}
