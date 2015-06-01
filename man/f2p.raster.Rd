\name{f2p.raster}

\alias{f2p.raster}

\title{
Raster based flat-to-parameter function.
}
\description{
Applies \code{\link{flat2parameter}} to each pixel in a raster to produce maps of disturbance parameters.
}
\usage{
f2p.raster(years, folder.in, folder.out, OUTPUT.fn, flat.pred.fn, INPUT.bands,
layer.shape = 1, layer.dyr = 2, layer.dur = 5, layer.mag = 3)
}

\arguments{
  \item{years}{ Vector of the years included in the time series data.
}
  \item{folder.in}{ Folder (full path) containing the input rasters.
}
  \item{folder.out}{ Folder where the output will be written.
}
  \item{OUTPUT.fn}{ Filename for output. The extension of this filename will specify the output file type. For image files, \code{OUTPUT.fn} should end in \code{.img} 
}
  \item{flat.pred.fn}{ Filename of a single layer \code{.img} file of the disturbance agents. The agents are specified by the integers from 0 to 6.

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
  \item{layer.mag}{ Number giving the layer of the shape files containing the disturbance magnitude data.
}
}

\details{The function writes a seven-layer raster with layers for disturbance agent, median disturbance year, median disturbance duration and magnitude of all image files given in \code{INPUT.bands}, in the order the filenames are listed in \code{INPUT.bands}.

The layers for shape, dyr and dur need to be the same in all files named in \code{INPUT.bands}. The default is \code{layer.shape = 1}, \code{layer.dyr = 2}, \code{layer.dur = 5}, and \code{layer.mag = 3}.

If, for example, \code{INPUT.bands = c(b5.fn, fi.fn, nbr.fn, and ndvi.fn)}, then the layers of the output file are:
\tabular{lllll}{
	  \tab \tab \tab \code{1} \tab Disturbance Agent\cr
	  \tab \tab \tab \code{2} \tab Disturbance Year\cr
	  \tab \tab \tab \code{3} \tab Disturbance Duration\cr	
	  \tab \tab \tab \code{4} \tab Magnitude B5\cr
	  \tab \tab \tab \code{5} \tab Magnitude FI\cr
	  \tab \tab \tab \code{6} \tab Magnitude NBR\cr
	  \tab \tab \tab \code{7} \tab Magnitude NDVI}

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

	# call f2p.raster
	ans <- f2p.raster(years = years, folder.in = folder.in, folder.out = folder.out, 
	OUTPUT.fn = "f2p_example.img", flat.pred.fn = flat.pred.fn, INPUT.bands = INPUT.bands)
}
}

\keyword{models}

