\name{getedf0}
\alias{getedf0}
\title{Get the Edf0 Vector for the Shape Routine}
\description{
An edf0 vector is the estimated "null expected degrees of freedom" for shapes allowed by the user. It is an input of the main routine "shape" and it is used to select the best shape for a scatterplot. See Meyer (2013a) and Meyer (2013b) for further details.
} 
\usage{getedf0(x, flat = TRUE, dec = TRUE, jp = TRUE, invee = TRUE, 
vee = TRUE, inc = TRUE, db = TRUE, nsim = 1e+3, random = FALSE, msg = FALSE)}

\arguments{
  \item{x}{A \eqn{n} by \eqn{1} predictor vector, for example, years.}
  \item{flat}{A logical flag. If it is TRUE, there is a flat shape choice; otherwise, there is no such a shape option.}
  \item{dec}{A logical flag. If it is TRUE, there is a decreasing shape choice; otherwise, there is no such a shape option.}
  \item{jp}{A logical flag. If it is TRUE, there is a one-jump shape choice; otherwise, there is no such a shape option.}
  \item{invee}{A logical flag. If it is TRUE, there is an inverted-vee shape choice; otherwise, there is no such a shape option.}
  \item{vee}{A logical flag. If it is TRUE, there is a vee shape choice; otherwise, there is no such a shape option.}
  \item{inc}{A logical flag. If it is TRUE, there is an increasing shape choice; otherwise, there is no such a shape option.}
  \item{db}{A logical flag. If it is TRUE, there is a double-jump option; otherwise, there is no such a shape option.}
  \item{nsim}{Number of simulations used to get the edf0 vector. The default is nsim = 1e+3.}
 \item{random}{A parameter used by the maintainer to test if each shape option can be both included and excluded.}
  \item{msg}{A logical flag. If msg is TRUE, then a warning message will be printed when there is a non-convergence problem; otherwise no warning message will be printed. The default is msg = FALSE}
}
\value{
The edf0 values for all shape options allowed by the user.
}

\author{
 Mary C. Meyer and Xiyue Liao
}

\details{
Because the calculations for the edf0 vector for a given set of \eqn{\bold{x}} values (e.g., years) is time-consuming, this is accomplished in the subroutine "getedf0", and the edf0 vector is an input to the main routine "shape". In this way the edf0 values can be determined for one set of years and used for many scatterplots. 
}

\references{
 Meyer, M. C. (2013a) Semi-parametric additive constrained regression. 
\emph{Journal of Nonparametric Statistics \bold{25(3)}}, 715

  Meyer, M. C. (2013b) A simple new algorithm for quadratic programming with applications in statistics. \emph{Communications in Statistics \bold{42(5)}}, 1126--1139.  
}
\seealso{\code{\link{shape}}}
\examples{
\dontrun{
	# define the predictor vector: the year 1985 to the year 2010
	x <- 1985:2010

	# call the getedf0 routine without a double-jump option
	edf0 <- getedf0(x, db = FALSE)
}
}
\keyword{shape}
