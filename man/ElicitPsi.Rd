\name{ElicitPsi}
\alias{ElicitPsi}

\title{Prior Elicitation for Analysis of 2 x 2 in Presence of Unmeasured Confounding  }

\description{ \code{ElicitPsi} provides a Tcl/Tk graphical user
interface that allows users to vary the parameters of the beta prior
distributions over the \eqn{\psi}{psi} parameters (the potential
outcome distributions within cells of the \eqn{(X,Y)} table) used by
\code{analyze2x2}. See Quinn (2008). }

\usage{
ElicitPsi(C00, C01, C10, C11, maxvalue = 100, 
          a00 = 0.25, a01 = 0.25, a10 = 0.25, a11 = 0.25, 
          nsamp = 50000, output.object = "output.SimpleTable")
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

  \item{maxvalue}{ The largest possible value for the parameters of
  the beta priors that are being elicited. This value is used to set
  the slider bars appropriately.  }

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

  \item{nsamp}{Size of the Monte Carlo sample used to summarize the
  posterior.}
  
  \item{output.object}{ String giving the name of the output object
  the result are sent to. Default is \code{output.SimpleTable}. }

}

\details{
See \code{analyze2x2} and Quinn (2008) for details regarding the model and prior specification used. 
}

\value{
  While \code{ElicitPsi} does not formally have a return value, it does put a number of objects in the global environment. These objects are:

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

In addition, if the user presses the \code{Calculate Effects} button,
\code{analyze2x2} is called with the current values of prior
parameters. The output from \code{analyze2x2} is written to an object
in the global environment with the name given by the
\code{output.object} argument (see argument list above).

}



\references{Quinn, Kevin M. 2008. ``What Can Be Learned from a Simple
Table: Bayesian Inference and Sensitivity Analysis for Causal Effects
from 2 x 2 and 2 x 2 x K Tables in the Presence of Unmeasured
Confounding.'' Working Paper. }

 \author{Kevin M. Quinn }

\seealso{\code{\link[SimpleTable]{ConfoundingPlot}}, \code{\link[SimpleTable]{analyze2x2xK}}, \code{\link[SimpleTable]{analyze2x2xK}}, \code{\link[SimpleTable]{summary.SimpleTable}}, \code{\link[SimpleTable]{plot.SimpleTable}}}




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

ElicitPsi(C00=19, C01=143, C10=114, C11=473, output.object="output.2x2")

}
}



\keyword{ iplot }

