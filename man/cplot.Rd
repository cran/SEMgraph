% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/semCluster.R
\name{cplot}
\alias{cplot}
\title{Subgraph mapping}
\usage{
cplot(graph, membership, l = layout.auto, map = FALSE, verbose = FALSE, ...)
}
\arguments{
\item{graph}{An igraph object.}

\item{membership}{Cluster membership vector for each node.}

\item{l}{graph layout. One of the \code{igraph} layouts.
If this argument is ignored, an automatic layout will be applied.}

\item{map}{A logical value. Visualize cluster mapping over the input
graph. If FALSE (default), visualization will be disabled. For large
graphs, visualization may take long.}

\item{verbose}{A logical value. If FALSE (default), the processed
graphs will not be plotted to screen, saving execution time (they will
be returned in output anyway).}

\item{...}{Currently ignored.}
}
\value{
The list of clusters and cluster mapping as igraph objects.
}
\description{
Map groups of nodes onto an input graph, based on a
membership vector.
}
\examples{

\donttest{
# Clustering ALS graph with WTC method
G <- alsData$graph
membership <- clusterGraph(graph = G, type = "wtc")
cplot(G, membership, map = TRUE, verbose = FALSE)
cplot(G, membership, map = FALSE, verbose = TRUE)
# The list of cluster graphs !
cg <- cplot(G, membership); cg
}

}
\seealso{
\code{\link[SEMgraph]{clusterGraph}},
\code{\link[SEMgraph]{clusterScore}}
}
\author{
Mario Grassi \email{mario.grassi@unipv.it}
}
