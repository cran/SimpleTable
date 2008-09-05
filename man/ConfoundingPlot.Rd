\name{ConfoundingPlot}
\alias{ConfoundingPlot}

\title{Confounding Plot of Quinn (2008)}

\description{ \code{ConfoundingPlot} implements the "confounding plot"
  discussed in Quinn (2008).  This plot displays, in the context of
  binary treatment (\eqn{X = 0}{X = 0}: control, \eqn{1}{1}:
  treatment) and binary outcome (\eqn{Y = 0}{Y = 0}: failure,
  \eqn{1}{1}: success), all types of unmeasured confounding that would
  keep a true causal effect of interest within some user-defined
  tolerance of the estimated causal effect.  }

\usage{
ConfoundingPlot(theta00, theta01, theta10, theta11, 
                conditioning = c("None", "Treated", "Control"), 
                PrY1.setX0 = NULL, PrY1.setX1 = NULL, 
                PrY1.setX0.withinTreated = NULL, 
                PrY1.setX1.withinControl = NULL, 
                epsilon = 0.025, color = "black", legend = FALSE)
}


\arguments{ 

\item{theta00}{The \emph{observed} joint probability that
  \eqn{X}{X} is control and \eqn{Y}{Y} is failure (\eqn{\Pr(X=0,
  Y=0)}{Pr(X=0, Y=0)}). In a 2 x 2 table in which \eqn{C_{00}}{C00} is
  the number of observations in the (\eqn{X=0}{X=0}, \eqn{Y=0}{Y=0})
  cell and in which there are \eqn{C}{C} total observations one can
  consistently estimate \code{theta00} with \eqn{C_{00} / C}{C00/C}.
  }

  \item{theta01}{The \emph{observed} joint probability that
  \eqn{X}{X} is control and \eqn{Y}{Y} is success (\eqn{\Pr(X=0,
  Y=1)}{Pr(X=0, Y=1)}). In a 2 x 2 table in which \eqn{C_{01}}{C01} is
  the number of observations in the (\eqn{X=0}{X=0}, \eqn{Y=1}{Y=1})
  cell and in which there are \eqn{C}{C} total observations one can
  consistently estimate \code{theta01} with \eqn{C_{01} / C}{C01/C}.}

  \item{theta10}{The \emph{observed} joint probability that
  \eqn{X}{X} is treatment and \eqn{Y}{Y} is failure (\eqn{\Pr(X=1,
  Y=0)}{Pr(X=1, Y=0)}). In a 2 x 2 table in which \eqn{C_{10}}{C10} is
  the number of observations in the (\eqn{X=1}{X=1}, \eqn{Y=0}{Y=0})
  cell and in which there are \eqn{C}{C} total observations one can
  consistently estimate \code{theta10} with \eqn{C_{10} / C}{C10/C}.}

  \item{theta11}{The \emph{observed} joint probability that
  \eqn{X}{X} is treatment and \eqn{Y}{Y} is success (\eqn{\Pr(X=1,
  Y=1)}{Pr(X=1, Y=1)}). In a 2 x 2 table in which \eqn{C_{11}}{C11} is
  the number of observations in the (\eqn{X=1}{X=1}, \eqn{Y=1}{Y=1})
  cell and in which there are \eqn{C}{C} total observations one can
  consistently estimate \code{theta11} with \eqn{C_{11} / C}{C1/C}.}

  \item{conditioning}{A string detailing whether the post-intervention
  distribution, and hence the estimand of interest, is restricted to a
  particular subgroup. Possible values are: \code{None},
  \code{Treated}, and \code{Control}. If \code{conditioning = None}
  then the post-intervention distribution is for all units. This is
  consistent with the causal estimand being the average treatment
  effect (ATE). If \code{conditioning = Treated} then the
  post-intervention is calculated only for just the treated
  units. This is consistent with the causal estimand being the average
  treatment effect within the treated (ATT). Finally, if
  \code{conditioning = Control} then the post-intervention
  distribution is calculated for just the control units. this is
  consistent with the causal estimand being the average treatment
  effect within the controls (ATC). Default is \code{None}. }

  \item{PrY1.setX0}{Optional value giving the \emph{assumed}
  probability that a randomly chosen unit will have \eqn{Y=1}{Y=1}
  (success) if its \eqn{X}{X} value is set to \eqn{0}{0} (control) by
  outside intervention. If \code{PrY1.setX0 = NULL} (the default) then
  \code{PrY1.setX0} is set to the \emph{observed} conditional
  probability that \eqn{Y}{Y} is \eqn{1}{1} given that \eqn{X}{X} is
  0. In the terms of Quinn (2008), the reference distribution is the
  prima facie post-intervention distribution. Setting
  \code{PrY1.setX0} to some non-\code{NULL} value allows one to use
  reference distributions other than the prima facie post-intervention
  distribution. This is useful if one wants to start with a particular
  value for ATE (that is not the prima facie ATE) and see how
  unmeasured confounding might affect that inference.  Only applicable
  if \code{conditioning = None}.  }

  \item{PrY1.setX1}{Optional value giving the \emph{assumed}
  probability that a randomly chosen unit will have \eqn{Y=1}{Y=1}
  (success) if its \eqn{X}{X} value is set to \eqn{1}{1} (treatment) by
  outside intervention. If \code{PrY1.setX1 = NULL} (the default) then
  \code{PrY1.setX1} is set to the \emph{observed} conditional
  probability that \eqn{Y}{Y} is \eqn{1}{1} given that \eqn{X}{X} is
  1. In the terms of Quinn (2008), the reference distribution is the
  prima facie post-intervention distribution. Setting
  \code{PrY1.setX1} to some non-\code{NULL} value allows one to use
  reference distributions other than the prima facie post-intervention
  distribution. This is useful if one wants to start with a particular
  value for ATE (that is not the prima facie ATE) and see how
  unmeasured confounding might affect that inference.  Only applicable
  if \code{conditioning = None}.}

  \item{PrY1.setX0.withinTreated}{Optional value giving the
  \emph{assumed} probability that a randomly chosen unit which
  received treatment would have \eqn{Y=1}{Y=1} (success) if its
  \eqn{X}{X} value were set to \eqn{0}{0} (control) by outside
  intervention. If \code{PrY1.setX0.withinTreated = NULL} (the
  default) then \code{PrY1.setX0.withinTreated} is set to the
  \emph{observed} conditional probability that \eqn{Y}{Y} is
  \eqn{1}{1} given that \eqn{X}{X} is 0. In the terms of Quinn (2008),
  the reference distribution is the prima facie post-intervention
  distribution. Setting \code{PrY1.setX0.withinTreated} to some
  non-\code{NULL} value allows one to use reference distributions
  other than the prima facie post-intervention distribution. This is
  useful if one wants to start with a particular value for ATT (that
  is not the prima facie ATT) and see how unmeasured confounding might
  affect that inference.  Only applicable if \code{conditioning =
  Treated}.}
 
 \item{PrY1.setX1.withinControl}{Optional value giving the
  \emph{assumed} probability that a randomly chosen unit which
  received control would have \eqn{Y=1}{Y=1} (success) if its
  \eqn{X}{X} value were set to \eqn{1}{1} (treatment) by outside
  intervention. If \code{PrY1.setX1.withinControl = NULL} (the
  default) then \code{PrY1.setX1.withinControl} is set to the
  \emph{observed} conditional probability that \eqn{Y}{Y} is
  \eqn{1}{1} given that \eqn{X}{X} is 1. In the terms of Quinn (2008),
  the reference distribution is the prima facie post-intervention
  distribution. Setting \code{PrY1.setX1.withinControl} to some
  non-\code{NULL} value allows one to use reference distributions
  other than the prima facie post-intervention distribution. This is
  useful if one wants to start with a particular value for ATC (that
  is not the prima facie ATC) and see how unmeasured confounding might
  affect that inference.  Only applicable if \code{conditioning =
  Control}.}

  \item{epsilon}{A scalar or array of tolerance values between 0 and
  1. The plot depicts all regions of the space of confounders for
  which the absolute difference between the true post-intervention
  distribution and the assumed post-intervention distribution is
  less than \code{epsilon}. See Quinn (2008) for details. If
  \code{epsilon} is an array then \code{color} (see below) must also
  be an array and the various tolerance regions will be overlaid in
  color.  }

  \item{color}{An array of colors for the plotting
  regions. \code{color} must have length equal to the length of
  \code{epsilon} (see above). }

  \item{legend}{Logical value indicating whether a legend should be printed. }
}



\details{
For full details see Quinn (2008).
}


\references{Quinn, Kevin M. 2008. ``What Can Be Learned from a Simple
Table: Bayesian Inference and Sensitivity Analysis for Causal Effects
from 2 x 2 and 2 x 2 x K Tables in the Presence of Unmeasured
Confounding.'' Working Paper. }

 \author{Kevin M. Quinn }

\seealso{\code{\link[SimpleTable]{analyze2x2}}, \code{\link[SimpleTable]{analyze2x2xK}}, \code{\link[SimpleTable]{ElicitPsi}}, }

\examples{
## Example from Quinn (2008)
## (original data from Oliver and Wolfinger. 1999. 
##   ``Jury Aversion and Voter Registration.'' 
##     American Political Science Review. 93: 147-152.)
##
##        Y=0       Y=1
## X=0    19        143
## X=1    114       473
##

C <- 19 + 143 + 114 + 473
theta00 <- 19/C
theta01 <- 143/C
theta10 <- 114/C
theta11 <- 473/C

## may have to adjust size of graphics device to make labels readable
ConfoundingPlot(theta00=theta00, theta01=theta01, 
	        theta10=theta10, theta11=theta11, legend=TRUE)


## same data but with various epsilons and a legend
## may have to adjust size of graphics device to make labels readable
ConfoundingPlot(theta00=theta00, theta01=theta01, 
	        theta10=theta10, theta11=theta11, 
		epsilon=c(.01, .025, .05, .1), 
		color=c("black", "darkblue", "blue", "cyan"), 
		legend=TRUE)

         

## same data but reference distribution is now just within the treated
## may have to adjust size of graphics device to make labels readable
ConfoundingPlot(theta00=theta00, theta01=theta01, 
	        theta10=theta10, theta11=theta11, 
		conditioning="Treated", legend=TRUE)



## set PrY1.setX0 and PrY1.setX1 in order to get a reference
## post-intervention distribution that is consistent with 
## ATE = -0.2 (note there are many ways to do this)
## may have to adjust size of graphics device to make labels readable
ConfoundingPlot(theta00=theta00, theta01=theta01, 
	        theta10=theta10, theta11=theta11, 
		PrY1.setX0=.9, PrY1.setX1=.7,
		legend=TRUE)


## another way to get ATE = -0.2
## may have to adjust size of graphics device to make labels readable
ConfoundingPlot(theta00=theta00, theta01=theta01, 
	        theta10=theta10, theta11=theta11, 
		PrY1.setX0=.85, PrY1.setX1=.65,
		legend=TRUE)


## a way to get ATE = -0.2 that is impossible given the observed data
##  (note the complete lack of any shaded regions in the left panel of plot)
## may have to adjust size of graphics device to make labels readable
ConfoundingPlot(theta00=theta00, theta01=theta01, 
	        theta10=theta10, theta11=theta11, 
		PrY1.setX0=.5, PrY1.setX1=.3,
		legend=TRUE)


}

\keyword{hplot}

