% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/semFit.R
\name{parameterEstimates}
\alias{parameterEstimates}
\title{Parameter Estimates of a fitted SEM}
\usage{
parameterEstimates(fit, ...)
}
\arguments{
\item{fit}{A RICF or constrained GGM fitted model object.}

\item{...}{Currently ignored.}
}
\value{
A data.frame containing the estimated parameters
}
\description{
Wrapper of the lavaan parameterEstimates() function
for RICF and CGGM algorithms
}
\examples{
ricf1 <- SEMrun(sachs$graph, log(sachs$pkc), sachs$group, algo = "ricf")
parameterEstimates(ricf1$fit)

cggm1 <- SEMrun(sachs$graph, log(sachs$pkc), sachs$group, algo = "cggm")
parameterEstimates(cggm1$fit)

}
\author{
Mario Grassi \email{mario.grassi@unipv.it}
}
