% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/semUtils.R
\name{graph2dagitty}
\alias{graph2dagitty}
\title{Graph conversion from igraph to dagitty}
\usage{
graph2dagitty(graph, graphType = "dag", verbose = FALSE, ...)
}
\arguments{
\item{graph}{A graph as an igraph or as an adjacency matrix.}

\item{graphType}{character, is one of "dag" (default)' or "pdag".
DAG can contain the directed (->) and bi-directed (<->) edges,
while PDAG can contain the edges: ->, <->, and the undirected edges
(--) that represent edges whose direction is not known.}

\item{verbose}{A logical value. If TRUE, the output graph is shown.
This argument is FALSE by default.}

\item{...}{Currently ignored.}
}
\value{
A dagitty object.
}
\description{
Convert an igraph object to a dagitty object.
}
\examples{

# Graph as an igraph object to dagitty object
G <- graph2dagitty(sachs$graph)
plot(dagitty::graphLayout(G))

}
\author{
Mario Grassi \email{mario.grassi@unipv.it}
}
