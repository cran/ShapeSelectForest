\name{shape}
\alias{shape}
\title{Shape Selection}
\description{Given a predictor vector \eqn{\bold{x}}, e.g., years, and a matrix \eqn{\bold{ymat}} whose columns are response vectors, e.g., Landsat signals. The shape routine will select a shape that is the best fit for each response vector according to the Bayes information criterion (BIC) or the cone information criterion (CIC).
}

\usage{shape(x, ymat, infocrit = "CIC", flat = TRUE, dec = TRUE, jp = TRUE, 
invee = TRUE, vee = TRUE, inc = TRUE, db = TRUE, nsim = 1e+3, 
edf0 = NULL, get.edf0 = FALSE, random = FALSE, msg = TRUE)}

\arguments{
  \item{x}{A \eqn{n} by \eqn{1} predictor vector, for example, years.}
  \item{ymat}{A \eqn{n} by \eqn{N} matrix whose columns are response vectors corresponding to x, for example, Landsat signals.}
  \item{infocrit}{The criterion used to select the best shape for a scatterplot. It can either be the Bayes information criterion (BIC) or the cone information criterion (CIC).}
  \item{flat}{A logical flag. If it is TRUE, there is a flat shape choice; otherwise, there is no such a shape option.}
  \item{dec}{A logical flag. If it is TRUE, there is a decreasing shape choice; otherwise, there is no such a shape option.}
  \item{jp}{A logical flag. If it is TRUE, there is a one-jump shape choice; otherwise, there is no such a shape option.}
  \item{invee}{A logical flag. If it is TRUE, there is an inverted-vee shape choice; otherwise, there is no such a shape option.}
  \item{vee}{A logical flag. If it is TRUE, there is a vee shape choice; otherwise, there is no such a shape option.}
  \item{inc}{A logical flag. If it is TRUE, there is an increasing shape choice; otherwise, there is no such a shape option.}
  \item{db}{A logical flag. If it is TRUE, there is a double-jump shape choice; otherwise, there is no such a shape option. The routine is usually slower when there is a double-jump shape choice than it is when there is no such a choice.}
  \item{nsim}{Number of simulations used to get the edf0 vector. The default is nsim = 1e+3. See references in this section
for more details about edf0.}
  \item{edf0}{The edf0 given by the user. When \eqn{\bold{x}} is an equally spaced vector whose number of elements is between \eqn{20} and \eqn{40}. The user doesn't need to provide an edf0 vector; otherwise, the user has to set get.edf0 to be TRUE such that the shape routine will simulate an edf0 vector, or the user can choose to simulate an edf0 vector by the getedf0 routine and provide the edf0 vector to the shape routine with this argument. The default is edf0 = NULL.}
 \item{get.edf0}{A logical flag. When \eqn{\bold{x}} is not an equally spaced vector whose number of elements is between \eqn{20} and \eqn{40}. The user has to set get.edf0 to be TRUE such that the shape routine will simulate an edf0 vector, or the user can choose to simulate an edf0 vector by the ``getedf0'' routine and provide the edf0 vector to the shape routine with the edf0 argument. The default is get.edf0 = FALSE.}
 \item{random}{A parameter used by the maintainer to test if each shape option can be both included and excluded.}
  \item{msg}{A logical flag. If msg is TRUE, then a warning message will be printed when there is a non-convergence problem; otherwise no warning message will be printed. The default is msg = TRUE}
}

\value{
  \item{shape}{ A \eqn{N} by \eqn{1} vector. The \eqn{i}th element is the best shape for each of the \eqn{i}th scatterplot.}
  \item{ic}{A \eqn{k} by \eqn{N} matrix where the \eqn{i}th column is the vector of "BIC" or "CIC" values used to choose the best shape for the \eqn{i}th scatterplot. \eqn{k} is the number of shapes allowed by the user.}
  \item{thetab}{A \eqn{n} by \eqn{N} matrix where the \eqn{i}th column is the vector of predicted values for the chosen shape for the \eqn{i}th scatterplot.}
  \item{x}{The argument x.}
  \item{ymat}{The argument ymat.}
  \item{infocrit}{The argument infocrit.}
  \item{k}{The number of knots used.}
  \item{bs}{A list of coefficient vectors. Each vector is the vector of coefficients for regression basis functions for each scatterplot.}
  \item{ijps}{A list storing the position of the first jump for scatterplots whose best shape is one-jump or double-jump. It also stores the position of the knot from where \eqn{\bold{f}} starts increasing (decreasing) for scatterplots whose best shape is vee (inverted vee).}
  \item{jjps}{A list storing the position of the second jump for scatterplots whose best shape is double-jump.}
  \item{m_is}{A vector storing the centering values for the first ramp edge for scatterplots whose best shape is one-jump or double-jump.}
  \item{m_js}{A vector storing the centering values for the second ramp edge for scatterplots whose best shape is double-jump.}
}

\details{
Given a scatterplot of \eqn{(x_i, y_i)}, \eqn{i=1,\ldots,n}, where \eqn{\bold{x}} could be a vector of years and \eqn{\bold{y}} could be a vector of Landsat signals, constrained least-squares spline fits are obtained for the following shapes:
\itemize{
\item{1. flat}
\item{2. decreasing}
\item{3. one-jump, i.e., decreasing, jump up, decreasing}
\item{4. inverted vee (increasing then decreasing)}
\item{5. vee (decreasing then increasing)}
\item{6. linear increasing}
\item{7. double-jump, i.e., decreasing, jump up, decreasing, jump up, decreasing}.
}

The "shape" routine chooses one of the shapes allowed by the user based on the minimum Bayes information criterion (BIC) or the cone information criterion (CIC). It also returns the information criterion (IC) values for shapes allowed by the user. Fitting method is constrained quadratic B-splines, number of knots depends on number of observations. The cone projection algorithm used in this routine is implemented by the \bold{R} package \bold{coneproj}. 

See references cited in this section and the official manual (\url{https://cran.r-project.org/package=coneproj}) for the \bold{R} package \bold{coneproj} for more details.}

\references{

 Meyer, M. C. (2013a) Semi-parametric additive constrained regression. 
\emph{Journal of Nonparametric Statistics \bold{25(3)}}, 715.

  Meyer, M. C. (2013b) A simple new algorithm for quadratic programming with applications in statistics. \emph{Communications in Statistics \bold{42(5)}}, 1126--1139.  

 Liao, X. and M. C. Meyer (2014) coneproj: An R package for the primal or dual cone projections with routines for constrained regression. \emph{Journal of Statistical Software \bold{61(12)}}, 1--22.

}

\author{
 Mary C. Meyer and Xiyue Liao 
}

\examples{
	# import the matrix of Landsat signals 
	data("ymat")

	# define the predictor vector: the year 1985 to the year 2010	
	x <- 1985:2010
\dontrun{
	# Example 1:	
	# call the shape routine allowing a double jump shape using "BIC"
	ans <- shape(x, ymat, "BIC")
	plotshape(ans, ids = 1:6, both = TRUE, form = TRUE)
}
	# Example 2:
	# call the shape routine not allowing a double jump shape using "CIC"
	ans <- shape(x, ymat, "CIC", db = FALSE)
	plotshape(ans, ids = 1:6, both = TRUE, form = TRUE)

}

\seealso{\code{\link{plotshape}}, \code{\link{edf0s}}}

\keyword{shape}
