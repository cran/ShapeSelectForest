\name{ShapeSelectForest-package}
\alias{ShapeSelectForest-package}
\alias{ShapeSelectForest}
\docType{package}
\title{Shape Selection for Landsat Time Series of Forest Dynamics}

\description{
Given a scatterplot of \eqn{(x_i, y_i)}, \eqn{i = 1,\ldots,n}, where \eqn{\bold{x}} could be a vector of years and \eqn{\bold{y}} could be a vector of Landsat signals, constrained least-squares spline fits are obtained for the following shapes:
\itemize{
\item{1. flat}
\item{2. decreasing}
\item{3. one-jump, i.e., decreasing, jump up, decreasing}
\item{4. inverted vee (increasing then decreasing)}
\item{5. vee (decreasing then increasing)}
\item{6. linear increasing}
\item{7. double-jump, i.e., decreasing, jump up, decreasing, jump up, decreasing}.
}
The shape with the smallest information criterion may be considered a "best" fit. This shape-selection problem was motivated by a need to identify types of disturbances to areas of forest, given Landsat signals over a number of years. The satellite signal is constant or slowly decreasing for a healthy forest, with a jump upward in the signal caused by mass destruction of trees.


The main routine to select the shape for a scatterplot is "shape". See \code{\link{shape}} for more details.
}

\details{
\tabular{ll}{
Package: \tab ShapeSelectForest\cr
Type: \tab Package\cr
Version: \tab 1.2\cr
Date: \tab 2015-12-25\cr
License: \tab GPL (>= 2)\cr
}
}


\references{

Meyer, M. C. and Woodroofe M (2000) On the Degrees of Freedom in Shape-Restricted Regression. \emph{The Annals of Statistics \bold{28}}, 1083--1104.

 Meyer, M. C. (2013a) Semi-parametric additive constrained regression. 
\emph{Journal of Nonparametric Statistics \bold{25(3)}}, 715.

  Meyer, M. C. (2013b) A simple new algorithm for quadratic programming with applications in statistics. \emph{Communications in Statistics \bold{42(5)}}, 1126--1139.  

 Liao, X. and M. C. Meyer (2014) coneproj: An R package for the primal or dual cone projections with routines for constrained regression. \emph{Journal of Statistical Software \bold{61(12)}}, 1--22.

}

\author{
 Mary C. Meyer, Xiyue Liao, Elizabeth Freeman, Gretchen G. Moisen 

Maintainer: Xiyue Liao <xiyue@rams.colostate.edu>
}

\keyword{package}

