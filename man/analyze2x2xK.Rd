\name{analyze2x2xK}
\alias{analyze2x2xK}


\title{ Analyze 2 x 2 x K Table in the Presence of Unmeasured Confounding }

\description{ \code{analyze2x2xK} performs a causal Bayesian analysis
  of a 2 x 2 x K table in which it is assumed that unmeasured
  confounding is present. The binary treatment variable is denoted
  \eqn{X = 0}{X = 0} (control), \eqn{1}{1} (treatment); the binary
  outcome variable is denoted \eqn{Y = 0}{Y = 0} (failure), \eqn{1}{1}
  (success); and the categorical measured confounder is denoted
  \eqn{W=0,\ldots,K-1}{W=0, ..., K-1}. The notation and terminology are
  from Quinn (2008).  }

\usage{
analyze2x2xK(SimpleTableList, Wpriorvector)
}


\arguments{ 

\item{SimpleTableList}{A list of \eqn{K} \code{SimpleTable} objects
formed by using \code{analyze2x2} to analyze the \eqn{K} conditional
\eqn{(X,Y)} tables given each level of the measured confounder
\eqn{W}. }

\item{Wpriorvector}{\eqn{K}-vector giving the parameters of the
Dirichlet prior for \eqn{\phi} where \eqn{\phi_k \equiv \Pr(W = k)}{phi_k =
Pr(W=k)} for \eqn{k=0, \ldots, K-1}{k=0, ..., K-1}. The \eqn{k}th
element of \code{Wpriorvector} corresponds to the \eqn{k}th element of
\eqn{W}.  }

}


\details{
\code{analyze2x2xK} performs the Bayesian analysis of a 2 x 2 x K
table described in Quinn (2008). \code{summary} and \code{plot}
methods can be used to examine the output.  
}

\value{
An object of class \code{SimpleTable}.
}


\references{Quinn, Kevin M. 2008. ``What Can Be Learned from a Simple
Table: Bayesian Inference and Sensitivity Analysis for Causal Effects
from 2 x 2 and 2 x 2 x K Tables in the Presence of Unmeasured
Confounding.'' Working Paper. }

 \author{Kevin M. Quinn }

\seealso{\code{\link[SimpleTable]{ConfoundingPlot}}, \code{\link[SimpleTable]{analyze2x2}}, \code{\link[SimpleTable]{ElicitPsi}}, \code{\link[SimpleTable]{summary.SimpleTable}}, \code{\link[SimpleTable]{plot.SimpleTable}}}


\examples{
\dontrun{
## Example from Quinn (2008)
## (original data from Oliver and Wolfinger. 1999. 
##   ``Jury Aversion and Voter Registration.'' 
##     American Political Science Review. 93: 147-152.)
##
##
##             W=0
##          Y=0   Y=1
##  X=0      1     21
##  X=1     10     93
##
##
##             W=1
##          Y=0   Y=1
##  X=0      5     32
##  X=1     27     92
##
##
##             W=2
##          Y=0   Y=1
##  X=0      4     44
##  X=1     52    186
##
##
##             W=3
##          Y=0   Y=1
##  X=0      7     20
##  X=1     19     47
##
##
##             W=4
##          Y=0   Y=1
##  X=0      2     26
##  X=1      6     55
##


## a prior belief in an essentially negative monotonic treatment effect 
## with the largest effects among those for whom W <= 2

S.mono.0 <- analyze2x2(C00=1, C01=21, C10=10, C11=93, 
                       a00=.25, a01=.25, a10=.25, a11=.25,
                       b00=0.02, c00=10, b01=25, c01=3, 
                       b10=3, c10=25, b11=10, c11=0.02)

S.mono.1 <- analyze2x2(C00=5, C01=32, C10=27, C11=92, 
                       a00=.25, a01=.25, a10=.25, a11=.25,
                       b00=0.02, c00=10, b01=25, c01=3, 
                       b10=3, c10=25, b11=10, c11=0.02)

S.mono.2 <- analyze2x2(C00=4, C01=44, C10=52, C11=186, 
                       a00=.25, a01=.25, a10=.25, a11=.25,
                       b00=0.02, c00=10, b01=25, c01=3, 
                       b10=3, c10=25, b11=10, c11=0.02)

S.mono.3 <- analyze2x2(C00=7, C01=20, C10=19, C11=47, 
                       a00=.25, a01=.25, a10=.25, a11=.25,
                       b00=0.02, c00=10, b01=15, c01=1, 
                       b10=1, c10=15, b11=10, c11=0.02)

S.mono.4 <- analyze2x2(C00=2, C01=26, C10=6, C11=55, 
                       a00=.25, a01=.25, a10=.25, a11=.25,
                       b00=0.02, c00=10, b01=15, c01=1, 
                       b10=1, c10=15, b11=10, c11=0.02)

S.mono.all <- analyze2x2xK(list(S.mono.0, S.mono.1, S.mono.2, 
	                        S.mono.3, S.mono.4), 
                           c(0.2, 0.2, 0.2, 0.2, 0.2))

summary(S.mono.all)
plot(S.mono.all)

}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ models }

