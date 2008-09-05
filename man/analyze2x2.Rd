\name{analyze2x2}
\alias{analyze2x2}

\title{Analyze 2 x 2 Table in the Presence of Unmeasured Confounding}

\description{ \code{analyze2x2} performs a causal Bayesian analysis of
  a 2 x 2 table in which it is assumed that unmeasured confounding is
  present. The binary treatment variable is denoted \eqn{X = 0}{X =
  0} (control), \eqn{1}{1} (treatment); and the binary outcome variable
  is denoted \eqn{Y = 0}{Y = 0} (failure), \eqn{1}{1} (success). The
  notation and terminology are from Quinn (2008). }

\usage{
analyze2x2(C00, C01, C10, C11, a00, a01, a10, a11, 
           b00, b01, b10, b11, c00, c01, c10, c11, nsamp = 50000)
}


\arguments{

  \item{C00}{ The number of observations in \eqn{(X=0, Y=0)}{(X=0,
  Y=0)} cell of the table. In other words, the number of observations
  that received control and failed.  }

  \item{C01}{The number of observations in \eqn{(X=0, Y=1)}{(X=0,
  Y=1)} cell of the table. In other words, the number of observations
  that received control and succeeded.  }

  \item{C10}{The number of observations in \eqn{(X=1, Y=0)}{(X=1,
  Y=0)} cell of the table. In other words, the number of observations
  that received treatment and failed.  }

  \item{C11}{The number of observations in \eqn{(X=1, Y=1)}{(X=1,
  Y=1)} cell of the table. In other words, the number of observations
  that received treatment and succeeded.  }

  \item{a00}{ One of four parameters (with \code{a01}, \code{a10}, and
  \code{a11} governing the Dirichlet prior for \eqn{\theta}{theta}
  (the joint probabilities of \eqn{X} and \eqn{Y}). This prior has the
  effect of adding \code{a00} - 1 observations to the \eqn{(X=0, Y=0)}
  cell of the table.  }

  \item{a01}{One of four parameters (with \code{a00}, \code{a10}, and
  \code{a11} governing the Dirichlet prior for \eqn{\theta}{theta}
  (the joint probabilities of \eqn{X} and \eqn{Y}). This prior has the
  effect of adding \code{a01} - 1 observations to the \eqn{(X=0, Y=1)}
  cell of the table.  }

  \item{a10}{One of four parameters (with \code{a00}, \code{a01}, and
  \code{a11} governing the Dirichlet prior for \eqn{\theta}{theta}
  (the joint probabilities of \eqn{X} and \eqn{Y}). This prior has the
  effect of adding \code{a10} - 1 observations to the \eqn{(X=1, Y=0)}
  cell of the table.  }

  \item{a11}{One of four parameters (with \code{a00}, \code{a01}, and
  \code{a10} governing the Dirichlet prior for \eqn{\theta}{theta}
  (the joint probabilities of \eqn{X} and \eqn{Y}). This prior has the
  effect of adding \code{a11} - 1 observations to the \eqn{(X=1, Y=1)}
  cell of the table.  }

  \item{b00}{One of two parameters (with \code{c00}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=0, Y=0)} cell of the table. This prior adds the same
  information as would be gained from observing \code{b00} - 1 Helped
  units in the \eqn{(X=0, Y=0)} cell of the table.}

  \item{b01}{ One of two parameters (with \code{c01}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=0, Y=1)} cell of the table. This prior adds the same
  information as would be gained from observing \code{b01} - 1 Always Succeed
  units in the \eqn{(X=0, Y=1)} cell of the table.}

  \item{b10}{One of two parameters (with \code{c10}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=1, Y=0)} cell of the table. This prior adds the same
  information as would be gained from observing \code{b10} - 1 Hurt
  units in the \eqn{(X=1, Y=0)} cell of the table. }

  \item{b11}{One of two parameters (with \code{c11}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=1, Y=1)} cell of the table. This prior adds the same
  information as would be gained from observing \code{b11} - 1 Always Succeed
  units in the \eqn{(X=1, Y=1)} cell of the table. }

  \item{c00}{One of two parameters (with \code{b00}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=0, Y=0)} cell of the table. This prior adds the same
  information as would be gained from observing \code{b00} - 1 Never Succeed
  units in the \eqn{(X=0, Y=0)} cell of the table. }

  \item{c01}{One of two parameters (with \code{b01}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=0, Y=1)} cell of the table. This prior adds the same
  information as would be gained from observing \code{c01} - 1 Hurt
  units in the \eqn{(X=0, Y=1)} cell of the table. }

  \item{c10}{ One of two parameters (with \code{b10}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=1, Y=0)} cell of the table. This prior adds the same
  information as would be gained from observing \code{c10} - 1 Never Succeed
  units in the \eqn{(X=1, Y=0)} cell of the table.}

  \item{c11}{ One of two parameters (with \code{b11}) governing the
  beta prior for the distribution of potential outcome types within
  the \eqn{(X=1, Y=1)} cell of the table. This prior adds the same
  information as would be gained from observing \code{b11} - 1 Helped
  units in the \eqn{(X=1, Y=1)} cell of the table.}

  \item{nsamp}{Size of the Monte Carlo sample used to summarize the posterior. }

}

\details{ \code{analyze2x2} performs the Bayesian analysis of a 2 x 2
table described in Quinn (2008). \code{summary} and \code{plot}
methods can be used to examine the output.  }

\value{
An object of class \code{SimpleTable}. 
}


\references{Quinn, Kevin M. 2008. ``What Can Be Learned from a Simple
Table: Bayesian Inference and Sensitivity Analysis for Causal Effects
from 2 x 2 and 2 x 2 x K Tables in the Presence of Unmeasured
Confounding.'' Working Paper. }

 \author{Kevin M. Quinn }

\seealso{\code{\link[SimpleTable]{ConfoundingPlot}}, \code{\link[SimpleTable]{analyze2x2xK}}, \code{\link[SimpleTable]{ElicitPsi}}, \code{\link[SimpleTable]{summary.SimpleTable}}, \code{\link[SimpleTable]{plot.SimpleTable}}}



\examples{
\dontrun{
## Example from Quinn (2008)
## (original data from Oliver and Wolfinger. 1999. 
##   ``Jury Aversion and Voter Registration.'' 
##     American Political Science Review. 93: 147-152.)
##
##        Y=0       Y=1
## X=0    19        143
## X=1    114       473
##

## uniform prior on the potential outcome distributions
S.unif <- analyze2x2(C00=19, C01=143, C10=114, C11=473, 
                     a00=.25, a01=.25, a10=.25, a11=.25,
                     b00=1, c00=1, b01=1, c01=1, 
                     b10=1, c10=1, b11=1, c11=1)

summary(S.unif)
plot(S.unif)


## a prior belief in an essentially negative monotonic treatment effect 
S.mono <- analyze2x2(C00=19, C01=143, C10=114, C11=473, 
                     a00=.25, a01=.25, a10=.25, a11=.25,
		     b00=0.02, c00=10, b01=25, c01=3, 
                     b10=3, c10=25, b11=10, c11=0.02)

summary(S.mono)
plot(S.mono)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ models }

