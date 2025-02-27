% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom-lode.r
\name{geom_lode}
\alias{geom_lode}
\title{Lodes at intersections of alluvia and strata}
\usage{
geom_lode(mapping = NULL, data = NULL, stat = "alluvium",
  position = "identity", width = 1/3, na.rm = FALSE,
  show.legend = NA, inherit.aes = TRUE, ...)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[=aes]{aes()}} or
\code{\link[=aes_]{aes_()}}. If specified and \code{inherit.aes = TRUE} (the
default), it is combined with the default mapping at the top level of the
plot. You must supply \code{mapping} if there is no plot mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[=ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[=fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{stat}{The statistical transformation to use on the data;
override the default.}

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{width}{Numeric; the width of each stratum, as a proportion of the
distance between axes. Defaults to 1/3.}

\item{na.rm}{Logical:
if \code{FALSE}, the default, \code{NA} lodes are not included;
if \code{TRUE}, \code{NA} lodes constitute a separate category,
plotted in grey (regardless of the color scheme).}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[=borders]{borders()}}.}

\item{...}{Additional arguments passed to \code{\link[ggplot2:layer]{ggplot2::layer()}}.}
}
\description{
\code{geom_alluvium} receives a dataset of the horizontal (\code{x}) and vertical (\code{y},
\code{ymin}, \code{ymax}) positions of the \strong{lodes} of an alluvial diagram, the
intersections of the alluvia with the strata. It plots rectangles for these
lodes of a provided \code{width}.
}
\section{Aesthetics}{

\code{geom_alluvium}, \code{geom_flow}, \code{geom_lode}, and \code{geom_stratum} understand the
following aesthetics (required aesthetics are in bold):
\itemize{
\item \strong{\code{x}}
\item \strong{\code{y}}
\item \strong{\code{ymin}}
\item \strong{\code{ymax}}
\item \code{alpha}
\item \code{colour}
\item \code{fill}
\item \code{linetype}
\item \code{size}
\item \code{group}
}

\code{group} is used internally; arguments are ignored.
}

\section{Defunct parameters}{

The previously deprecated parameters \code{axis_width} and \code{ribbon_bend} are now
defunct. Use \code{width} and \code{knot.pos} instead.
}

\examples{
# one axis
ggplot(as.data.frame(Titanic),
       aes(y = Freq,
           axis = Class)) +
  geom_lode(aes(fill = Class, alpha = Survived)) +
  scale_x_discrete(limits = c("Class")) +
  scale_alpha_manual(values = c(.25, .75))

gg <- ggplot(as.data.frame(Titanic),
             aes(y = Freq,
                 axis1 = Class, axis2 = Sex, axis3 = Age,
                 fill = Survived))
# alluvia and lodes
gg + geom_alluvium() + geom_lode()
# lodes as strata
gg + geom_alluvium() +
  geom_stratum(stat = "alluvium")
}
\seealso{
\code{\link[ggplot2:layer]{ggplot2::layer()}} for additional arguments and
\code{\link[=stat_alluvium]{stat_alluvium()}} and
\code{\link[=stat_stratum]{stat_stratum()}} for the corresponding stats.

Other alluvial geom layers: \code{\link{geom_alluvium}},
  \code{\link{geom_flow}}, \code{\link{geom_stratum}}
}
\concept{alluvial geom layers}
