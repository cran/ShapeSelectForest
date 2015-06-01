\name{edf0s}
\alias{edf0s}
\docType{data}
\title{A 21 by 7 Matrix Storing Edf0 Vectors}

\description{The object "edf0s" is a \eqn{21} by \eqn{7} matrix. Each row is an edf0 vector of \eqn{7} elements corresponding to the \eqn{7} shapes in this package. Such a vector will be used in the main routine "shape" to select the best shape for a scatterplot of Landsat signals. Each edf0 vector is simulated through a subroutine called "getedf0", using a total of \eqn{1000} simulations with the random seed being set to \eqn{123}. Each row is an edf0 vector for an equally spaced \eqn{\bold{x}} vector of \eqn{n} elements (e.g., years). From the first row to the last row, the edf0 vector is for a predictor vector \eqn{\bold{x}} of length \eqn{n} which is an integer ranging from \eqn{20} to \eqn{40}. The matrix is built for the convenience of users when they call the routine "shape". 

If the \eqn{\bold{x}} vector is equally spaced and its number of elements \eqn{n} is between \eqn{20} and \eqn{40}, then a corresponding edf0 vector will be extracted directly from this matrix and no simulation will be done, which saves a lot of time; otherwise, the subroutine "getedf0" will be called inside the routine "shape" to get an edf0 vector for \eqn{\bold{x}}. The timing depends on the number of elements in \eqn{\bold{x}} and the shape options allowed by the user. For example, when \eqn{\bold{x}} is an equally spaced vector of \eqn{26} elements, the timing is about \eqn{167} seconds if the user allows a double-jump shape and the timing is about \eqn{12} seconds if the user doesn't allow a double-jump shape. Also, when \eqn{\bold{x}} is not an equally spaced vector, no matter how many elements it has, "getedf0" should be called.

}

\usage{data("edf0s")}

\format{A 21 by 7 matrix.}

\seealso{\code{\link{shape}}, \code{\link{ShapeSelectForest-package}}}

\keyword{datasets}
