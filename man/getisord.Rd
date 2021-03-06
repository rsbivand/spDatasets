% Copyright 2001 by Roger S. Bivand
\name{getisord}
\alias{getisord}
\alias{x}
\alias{y}
\alias{xyz}
\docType{data}
\title{Getis-Ord remote sensing example data}
\usage{data(getisord)}
\description{
The \code{xyz} data frame has 256 rows and 3 columns. Vectors \code{x} 
and \code{y} are of length 16 and give the centres of the grid rows
and columns, 30m apart. The data start from the bottom left, Getis and
Ord start from the top left - so their 136th grid cell is our 120th.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{x}{grid eastings}
    \item{y}{grid northings}
    \item{val}{remote sensing values}
  }
}
\source{Getis, A. and Ord, J. K. 1996 Local spatial
statistics: an overview. In P. Longley and M. Batty (eds) \emph{Spatial
analysis: modelling in a GIS environment} (Cambridge: Geoinformation
International), 266.
}
\examples{
data(getisord)
image(x, y, t(matrix(xyz$val, nrow=16, ncol=16, byrow=TRUE)), asp=1)
text(xyz$x, xyz$y, xyz$val, cex=0.7)
polygon(c(195,225,225,195), c(195,195,225,225), lwd=2)
title(main="Getis-Ord 1996 remote sensing data")
}
\keyword{datasets}
