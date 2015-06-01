\name{f2a.raster}
\alias{f2a.raster}
\title{
Raster based flat-to-annual function.
}
\description{
Applies \code{\link{flat2annual}} to each pixel in a raster to produce time series maps of disturbance.
}
\usage{
f2a.raster(years, folder.in, folder.out, OUTPUT.fn, flat.pred.fn, INPUT.bands,
layer.shape = 1, layer.dyr = 2, layer.dur = 5)
}

\arguments{
  \item{years}{Vector of the years included in the time series data.
}
  \item{folder.in}{Folder (full path) containing the input rasters.
}
  \item{folder.out}{Folder where the output will be written.
}
  \item{OUTPUT.fn}{Filename for output. The extension of this filename will specify the output file type. For image files, \code{OUTPUT.fn} should end in \code{.img}. 
}
  \item{flat.pred.fn}{Filename of a single layer \code{.img} file of the disturbance agents. The agents are specified by the integers from 0 to 6.

\tabular{lllll}{
	  \tab \tab \tab \code{0} \tab Unclassified\cr
	  \tab \tab \tab \code{1} \tab Conversion\cr
	  \tab \tab \tab \code{2} \tab Fire\cr
	  \tab \tab \tab \code{3} \tab Harvest\cr	
	  \tab \tab \tab \code{4} \tab Stable\cr
	  \tab \tab \tab \code{5} \tab Stress\cr
	  \tab \tab \tab \code{6} \tab Recovery}

}
  \item{INPUT.bands}{ Filenames of the multi-layer \code{.img} files of the shapes to be used.
}
  \item{layer.shape}{ Number giving the layer of the shape files containing the shape data.
}
  \item{layer.dyr}{ Number giving the layer of the shape files containing the disturbance year data.
}
  \item{layer.dur}{ Number giving the layer of the shape files containing the disturbance duration data.
}
}

\details{The function writes a multi-layer raster with one layer for each year in \code{years} given the predicted agent for each pixel at each year.

The layers for shape, dyr and dur need to be the same in all files named in \code{INPUT.bands}. The default is \code{layer.shape = 1}, \code{layer.dyr = 2}, and \code{layer.dur = 5}.
}
\value{
The function does not return a value. Instead, a multi-band \code{.img} map file is created.
}

\author{
Liz Freeman
}

\seealso{
\code{\link{flat2annual}}
}

\examples{
\dontrun{
	# define years
	years <- c(1984, 1986:2010)

	# define a folder for all output
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
	ans <- f2a.raster(years = years, folder.in = folder.in, folder.out = folder.out, 
	OUTPUT.fn = "f2a_example.img", flat.pred.fn = flat.pred.fn, INPUT.bands = INPUT.bands)
}
}

\keyword{models}

