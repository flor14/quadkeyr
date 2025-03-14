% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qk_to_latlong_functions.R
\name{pixelXY_to_latlong}
\alias{pixelXY_to_latlong}
\title{Convert pixel XY coordinatess into lat/long coordinates.}
\usage{
pixelXY_to_latlong(pixelX, pixelY, zoom)
}
\arguments{
\item{pixelX}{X coordinate of the point, in pixels.}

\item{pixelY}{Y coordinates of the point, in pixels.}

\item{zoom}{Zoom or level of detail,
from 1 (lowest detail) to 23 (highest detail).}
}
\value{
A list with the longitude and latitude.
}
\description{
Converts a pixel from pixel XY coordinates at a specified zoom
level into latitude/longitude WGS-84 coordinates (in degrees).
For further information, refer to the
Microsoft Bing Maps Tile System documentation.
}
\details{
Converting latitude/longitude coordinates into a QuadKey
and then back to latitude/longitude won't yield identical values,
unless the initial latitude/longitude coordinates
correspond to the upper-left QuadKey's pixel and tile XY coordinates
at the same zoom level.

Understanding this distinction is crucial for
the accurate use of these functions in coordinate conversions.

For a detailed explanation on how to use this
and other similar \code{quadkeyr} functions,
read the the vignette:
\url{https://docs.ropensci.org/quadkeyr/articles/quadkey_to_sf_conversion.html}
}
\examples{

pixelXY_to_latlong(
  pixelX = 768,
  pixelY = 1280,
  zoom = 3
)

}
\references{
\url{https://learn.microsoft.com/en-us/bingmaps/articles/bing-maps-tile-system}
}
