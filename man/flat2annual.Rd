\name{flat2annual}
\alias{flat2annual}
\title{
flat2annual
}
\description{
Identifies the disturbance year of a single pixel or a plot location.
}
\usage{
flat2annual(years, all.shapes, all.durs, all.dyrs, mtbs, flat.pred)
}
\arguments{
  \item{years}{ Vector of the years included in the time series data.}
  \item{all.shapes}{ Vector (length 4) of the shapes of the four remote sensing bands. Shape values range from 1 to 7.}
  \item{all.durs}{ Vector (length 4) of the duration of each shape.}
  \item{all.dyrs}{ Vector (length 4) of the year of each shape. }
  \item{mtbs}{MTBS}
  \item{flat.pred}{ Predicted disturbance Agent. Agent values range from 0 to 6.}
}
\details{
\code{flat2annual} can be used on either a single pixel or on a single data point in a data frame.
}
\value{
Returns a vector of the same length as \code{years} with a predicted agent for each year in \code{years}.
}

\author{Liz Freeman}

\examples{
	# define years
	years <- c(2001:2010)

	# define parameters
	all.shapes <- c(1, 4, 5, 3)
	all.dyrs <- c(2001, 0, 2004, 2004)
	all.durs <- c(1, 0, 3, 5)
	flat.pred <- 5

	# call flat2annual
	ans <- flat2annual(years = years, all.shapes = all.shapes, all.durs = all.durs,
	all.dyrs = all.dyrs, mtbs = mtbs, flat.pred = flat.pred)
}

\keyword{models}

