\name{shapeparams}
\alias{shapeparams}
\title{Shape Parameters}
\description{Given the output from the shape function (including the chosen shape, chosen information criteria value ic, vector of fitted values thetab, and corresponding \eqn{\bold{x}}, e.g., years), this routine calculates a set of parameters that describe the behavior of the fitted trajectory.}
\usage{shapeparams(shapenum, ic, thetab, x)}
\arguments{
  \item{shapenum}{A number with the index \eqn{1} to \eqn{7}.}
  \item{ic}{A \eqn{k} by \eqn{N} matrix where the \eqn{i}th column is the vector of "BIC" or "CIC" values used to choose the best shape for the \eqn{i}th scatterplot. \eqn{k} is the number of shapes allowed by the user.}
  \item{thetab}{A \eqn{n} by \eqn{N} matrix where the \eqn{i}th column is the vector of predicted values for the chosen shape for the \eqn{i}th scatterplot.}
  \item{x}{A \eqn{n} by \eqn{1} predictor vector, e.g., years.}
}

\value{
\item{shapenum}{the shapenum argument} 
\item{pre.rate}{annual rate of decline prior to the primary change point}
\item{pre.rate2}{annual rate of decline prior to the secondary change point}
\item{dist.yr}{year of the primary change points}
\item{dist2.yr}{year of the secondary change points}
\item{dist.mag}{difference in predicted values before and after primary change events}
\item{dist2.mag}{difference in predicted values before and after secondary change events}
\item{dist.mag2}{difference in predicted values before and after primary change points scaled by starting value}
\item{dist2.mag2}{difference in predicted values before and after secondary change points scaled by starting value}
\item{dist.dur}{duration of the change event before resuming a downward turn}
\item{dist2.dur}{duration of the change event before resuming a downward turn}
\item{post.rate}{annual rate of decline after the end of the primary change event}
\item{post2.rate}{annual rate of decline after the end of the secondary change event}
\item{my.ic}{information criteria value for the chosen shape}

}

\references{
Moisen, G.G., M. Meyer, T.A. Schroeder, C. Toney, X. Liao, E.A. Freeman, K. Schleeweis. \emph{Shape-selection in Landsat time series: A tool for monitoring forest dynamics (In Review).} Global Change Biology.  
}

\author{
Gretchen G. Moisen
}

\seealso{\code{\link{shape}}}

\examples{
\dontrun{
	# import the matrix of Landsat signals 
	data("ymat")
	
	# define the predictor vector: the year 1985 to the year 2010
	x <- 1985:2010
 	
	# call the shape routine allowing a double-jump shape using "CIC"
	ans <- shape(x, ymat, "CIC")

	# Example 1: parameters for a flat shape
	flat_id <- which(ans$shape == 1)
	i <- flat_id[1]
	ans_flat <- shapeparams(ans$shape[i], ans$ic[, i], ans$thetab[, i], x)	

	# Example 2: parameters for a one-jump shape
	jp_id <- which(ans$shape == 3)
	i <- jp_id[1]
	ans_jp <- shapeparams(ans$shape[i], ans$ic[, i], ans$thetab[, i], x)	

	# Example 3: parameters for a double-jump shape
	db_id <- which(ans$shape == 7)
	i <- db_id[1]
	ans_db <- shapeparams(ans$shape[i], ans$ic[, i], ans$thetab[, i], x)		
}
}
\keyword{models}
