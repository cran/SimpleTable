\name{is.SimpleTable}
\alias{is.SimpleTable}

\title{Is object of class SimpleTable? }

\description{
Checks to see if object is of class \code{SimpleTable}.
}

\usage{
is.SimpleTable(S)
}

\arguments{
  \item{S}{ An object to be checked. }
}


\value{
A logical value equal to \code{TRUE} if \code{S} is of class \code{SimpleTable} and \code{FALSE} otherwise.
}


\references{Quinn, Kevin M. 2008. ``What Can Be Learned from a Simple
Table: Bayesian Inference and Sensitivity Analysis for Causal Effects
from 2 x 2 and 2 x 2 x K Tables in the Presence of Unmeasured
Confounding.'' Working Paper. }

 \author{Kevin M. Quinn }

\seealso{\code{\link[SimpleTable]{ConfoundingPlot}}, \code{\link[SimpleTable]{analyze2x2xK}}, \code{\link[SimpleTable]{ElicitPsi}}, \code{\link[SimpleTable]{summary.SimpleTable}}, \code{\link[SimpleTable]{plot.SimpleTable}}}

\keyword{classes}