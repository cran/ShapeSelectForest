\name{flat2parameter}
\alias{flat2parameter}
\title{flat2parameter}
\description{
Based on the disturbance type and the shapes of the four remote sensing bands, a vector of averaged parameters is produced. Which bands are included in the average depends on both the predicted disturbance type and the shapes of the four bands.
}
\usage{
flat2parameter(years, all.shapes, all.durs, all.dyrs, all.mags, mtbs, flat.pred)
}

\arguments{
  \item{years}{Vector of the years included in the time series data.}
  \item{all.shapes}{Vector (length 4) of the shapes of the four remote sensing bands. Shape values range from 1 to 7.}
  \item{all.durs}{ Vector (length 4) of the duration of each shape.}
  \item{all.dyrs}{ Vector (length 4) of the year of each shape. }
  \item{all.mags}{ Vector (length 4) of the magnitude of each shape. }
  \item{mtbs}{MTBS.}
  \item{flat.pred}{ Predicted disturbance Agent. Agent values range from 0 to 6.}
}
\details{
\code{flat2parameter} can be used on either a single pixel or on a single data point in a data frame.
}
\value{
Returns a vector of length 4 containing the average disturbance year, the duration, the magnitude, and the predicted type.
}

\author{Liz Freeman}

\examples{
	# define years
	years <- c(2001:2010)

	# define parameters
	all.shapes <- c(1, 4, 5, 3)
	all.dyrs <- c(2001, 0, 2004, 2004)
	all.durs <- c(1, 0, 3, 5)
	all.mags <- c(100, 0, 1000, 1500)
	flat.pred <- 5

	# call flat2parameter
	ans <- flat2parameter(years = years, all.shapes = all.shapes, all.durs = all.durs,
	all.dyrs = all.dyrs, all.mags = all.mags, mtbs = mtbs, flat.pred = flat.pred)
}

\keyword{models}

