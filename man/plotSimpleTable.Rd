\name{plot.SimpleTable}
\alias{plot.SimpleTable}

\title{Summary plots of SimpleTable objects. }

\description{ \code{plot.SimpleTable} summarizes a \code{SimpleTable}
object by plotting the psterior density of the prima facie and
sensitivity analysis causal effects. }

\usage{
plot.SimpleTable(x, estimand = c("ATE", "ATT", "ATC", "RR", "RRT", "RRC", 
                                 "logRR", "logRRT", "logRRC"), 
                 percent = 95, plot.bounds = TRUE, plot.pf = TRUE, 
                 plot.sens = TRUE, plot.prior = FALSE, 
                 color.bounds = "cyan", 
                 color1.pf = "lawngreen", color2.pf = "green", 
                 color1.sens = "magenta3", color2.sens = "purple4", 
                 color.prior = "lightgray", ymax = NULL, ...)
}


\arguments{

  \item{x}{ An object of class \code{SimpleTable} produced by
  \code{analyze2x2} or \code{analyze2x2xK} that is to be graphically
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
  plotted. Default value is \eqn{95}. }

  \item{plot.bounds}{Logical value indicating whether the large-sample nonparametric bounds should be plotted. Default value is \code{TRUE}. }

  \item{plot.pf}{ Logical value indicating whether the posterior
  density of the prima facie causal effect should be plotted. Default
  value is \code{TRUE}. }

  \item{plot.sens}{ Logical value indicating whether the posterior
  density of the sensitivity analysis causal effect should be plotted. Default
  value is \code{TRUE}. }

  \item{plot.prior}{ Logical value indicating whether the
  prior density of the causal effect of interest should be plotted. Default
  value is \code{FALSE}. }

  \item{color.bounds}{The color of the line segment depicting the
  large-sample nonparametric bounds. Default value is \code{cyan}. }

  \item{color1.pf}{ The color of the prima facie posterior density in
  regions outside the \code{percent}\% highest posterior density
  region. Default value is \code{lawngreen}.}

  \item{color2.pf}{ The color of the prima facie posterior density in
  regions inside the \code{percent}\% highest posterior density
  region. Default value is \code{green}.}

  \item{color1.sens}{ The color of the sensitivity analysis posterior
  density in regions outside the \code{percent}\% highest posterior
  density region. Default value is \code{magenta3}. }

  \item{color2.sens}{ The color of the sensitivity analysis posterior
  density in regions inside the \code{percent}\% highest posterior
  density region. Default value is \code{purple4}. }

  \item{color.prior}{ The color of the prior density of the causal
  effect of interest. Default value is \code{lightgray}. }

  \item{ymax}{ The maximum height of the \eqn{y}-axis. If \code{NULL}
  (the default) then \code{ymax} is taken to be the maximum ordinate
  of the prima facie posterior density, the sensitivity analysis
  posterior density, and the prior density. }

  \item{\dots}{ Other arguments to be passed. }

}

\details{ See Quinn (2008) for the a description of these plots along
with the associated terminology and notation.  }



\references{Quinn, Kevin M. 2008. ``What Can Be Learned from a Simple
Table: Bayesian Inference and Sensitivity Analysis for Causal Effects
from 2 x 2 and 2 x 2 x K Tables in the Presence of Unmeasured
Confounding.'' Working Paper. }

\author{Kevin M. Quinn }

\seealso{\code{\link[SimpleTable]{ConfoundingPlot}}, \code{\link[SimpleTable]{analyze2x2}}, \code{\link[SimpleTable]{analyze2x2xK}}, \code{\link[SimpleTable]{ElicitPsi}}, \code{\link[SimpleTable]{summary.SimpleTable}}}


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
plot(S.mono)

## ATC instead of ATE
plot(S.mono, estimand="ATC")

## different colors
plot(S.mono, estimand="ATC", color1.pf="red", color2.pf="blue",
     color1.sens="gray", color2.sens="orange")
   
}
}

\keyword{ methods }
\keyword{ hplot }

