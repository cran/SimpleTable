\name{summary.SimpleTable}
\alias{summary.SimpleTable}


\title{ Summary of SimpleTable objects }

\description{ \code{summary.SimpleTable} summarizes a
\code{SimpleTable} object by printing the mode, mean, standard
deviation, and \code{percent}\% highest density region of the prima
facie and sensitivity analysis posterior densities. Large-sample
nonparametric bounds for the estimand of interest are also
reported. Summaries of the prior distribution are also reported in
situations where these summaries are numerically stable.  }

\usage{
summary.SimpleTable(object, estimand = c("ATE", "ATT", "ATC", 
                                         "RR", "RRT", "RRC", 
                                         "logRR", "logRRT", "logRRC"), 
                    percent = 95, ...)
}


\arguments{

  \item{object}{ An object of class \code{SimpleTable} produced by
  \code{analyze2x2} or \code{analyze2x2xK} that is to be
  summarized. }

  \item{estimand}{The causal estimand of interest. Options include: 
    \code{ATE} (average treatment effect),
    \code{ATT} (average treatment effect on the treated),
    \code{ATC} (average treatment effect on the controls),
    \code{RR} (relative risk),
    \code{RRT} (relative risk on the treated),
    \code{RRC} (relative risk on the controls),
    \code{logRR} (log relative risk),
    \code{logRRT} (log relative risk on the treated), and
    \code{logRRC} (log relative risk on the controls).
}

  \item{percent}{A number between 0 and 100 (exclusive) giving the
  size of the highest posterior density regions to be calculated and
  printed. Default value is \eqn{95}. }

  \item{\dots}{ Other arguments to be passed. }
}

\details{
 See Quinn (2008) for the a description of these plots along
with the associated terminology and notation.
}


\references{Quinn, Kevin M. 2008. ``What Can Be Learned from a Simple
Table: Bayesian Inference and Sensitivity Analysis for Causal Effects
from 2 x 2 and 2 x 2 x K Tables in the Presence of Unmeasured
Confounding.'' Working Paper. }

\author{Kevin M. Quinn }

\seealso{\code{\link[SimpleTable]{ConfoundingPlot}}, \code{\link[SimpleTable]{analyze2x2}}, \code{\link[SimpleTable]{analyze2x2xK}}, \code{\link[SimpleTable]{ElicitPsi}}, \code{\link[SimpleTable]{plot.SimpleTable}}}


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

## a prior belief in an essentially negative monotonic treatment effect 
S.mono <- analyze2x2(C00=19, C01=143, C10=114, C11=473, 
                     a00=.25, a01=.25, a10=.25, a11=.25,
		     b00=0.02, c00=10, b01=25, c01=3, 
                     b10=3, c10=25, b11=10, c11=0.02)

## ATE (the default)
summary(S.mono)

## ATC instead of ATE
summary(S.mono, estimand="ATC")

}
}





\keyword{ methods }

