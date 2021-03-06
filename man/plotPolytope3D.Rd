% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plotPolytope3D}
\alias{plotPolytope3D}
\title{Plot the polytope (bounded convex set) of a linear mathematical program}
\usage{
plotPolytope3D(
  A,
  b,
  obj = NULL,
  type = rep("c", ncol(A)),
  nonneg = rep(TRUE, ncol(A)),
  crit = "max",
  faces = rep("c", ncol(A)),
  plotFaces = TRUE,
  plotFeasible = TRUE,
  plotOptimum = FALSE,
  latex = FALSE,
  labels = NULL,
  ...
)
}
\arguments{
\item{A}{The constraint matrix.}

\item{b}{Right hand side.}

\item{obj}{A vector with objective coefficients.}

\item{type}{A character vector of same length as number of variables. If
entry k is 'i' variable \eqn{k} must be integer and if 'c' continuous.}

\item{nonneg}{A boolean vector of same length as number of variables. If
entry k is TRUE then variable k must be non-negative.}

\item{crit}{Either max or min (only used if add the iso profit line)}

\item{faces}{A character vector of same length as number of variables. If
entry k is 'i' variable \eqn{k} must be integer and if 'c' continuous.
Useful if e.g. want to show the linear relaxation of an IP.}

\item{plotFaces}{If \code{True} then plot the faces.}

\item{plotFeasible}{If \code{True} then plot the feasible points/segments
(relevant for IPLP/MILP).}

\item{plotOptimum}{Show the optimum corner solution point (if alternative solutions
only one is shown) and add the iso profit line.}

\item{latex}{If \code{True} make latex math labels for TikZ.}

\item{labels}{If \code{NULL} don't add any labels. If 'n' no labels but show the points. If
'coord' add coordinates to the points. Otherwise number all points from one.}

\item{...}{Arguments passed to axes3d, plot3d, title3d, text3d. Parsed using lists argsAxes3d,
argsPlot3d, argsText3d and argsTitle3d.}
}
\value{
A rgl window with 3D plot.
}
\description{
Plot the polytope (bounded convex set) of a linear mathematical program
}
\note{
The feasible region defined by the constraints must be bounded otherwise you may see
strange results.
}
\author{
Lars Relund \email{lars@relund.dk}
}
