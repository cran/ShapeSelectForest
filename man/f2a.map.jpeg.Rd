\name{f2a.map.jpeg}
\alias{f2a.map.jpeg}
\title{f2a.map.jpeg}
\description{
Creates a time series of jpegs. One jpeg is created for each year of the map output of \code{\link{f2a.raster}}.
}

\usage{
f2a.map.jpeg(years, folder, OUTPUT.fn, height = 10, 
width = 10 * (dim(mapgrid.dist)[2] / dim(mapgrid.dist)[1]), 
units = "in", res = 400)
}

\arguments{
  \item{years}{Vector of the years included in the time series data.}
  \item{folder}{Folder (full path) containing the input rasters. This is also the folder where the output will be written.}
  \item{OUTPUT.fn}{Filename of output from \code{\link{f2a.raster}}.}
  \item{height}{The height of the device.}
  \item{width}{The width of the device.  The default is the width that will give accurate ratio of height to width for a raster.}
  \item{units}{The units in which \code{height} and \code{width} are given, which can be \code{px} (pixels, the default), \code{in} (inches), \code{cm} or \code{mm}.}
  \item{res}{The nominal resolution in ppi which will be recorded in the bitmap file, if a positive integer. Also used for units other than the default. If not specified, taken as 300 ppi to set the size of text and line widths.}
}

\details{
Creates one jpeg for each year in \code{years}.
}

\value{Returns nothing
}

\author{Liz Freeman
}

\seealso{\code{\link{f2a.raster}}
}

\examples{
\dontrun{
	# define years
	years <- c(1984, 1986:2010)
	
	# define a folder for all outputs
	folder.in <- paste(system.file(package = "ShapeSelectForest"), 
	"extdata", "helpexamples", sep = "/")
	folder.out <- getwd()

	# define filenames
	flat.pred.fn <- "MINI_FLATPRED.img"
	b5.fn <- "MINI_B5.img"
	fi.fn <- "MINI_FI.img"
	nbr.fn <- "MINI_NBR.img"
	ndvi.fn <- "MINI_NDVI.img"
	INPUT.bands <- c(b5.fn, fi.fn, nbr.fn, ndvi.fn)

	# call f2a.raster
	ans1 <- f2a.raster(years = years, folder.in = folder.in, folder.out = folder.out, 
	OUTPUT.fn <- "f2a_example.img", flat.pred.fn = flat.pred.fn, INPUT.bands = INPUT.bands)

	# create jpegs 
	ans2 <- f2a.map.jpeg(years = years, folder = folder.out, OUTPUT.fn = "f2a_example.img")
}
}

\keyword{models}

