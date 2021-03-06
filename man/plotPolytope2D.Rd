% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plotPolytope2D}
\alias{plotPolytope2D}
\title{Plot the polytope (bounded convex set) of a linear mathematical program}
\usage{
plotPolytope2D(
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
(relevant for ILP/MILP).}

\item{plotOptimum}{Show the optimum corner solution point (if alternative solutions
only one is shown) and add the iso profit line.}

\item{latex}{If \code{True} make latex math labels for TikZ.}

\item{labels}{If \code{NULL} don't add any labels. If 'n' no labels but show the points. If
'coord' add coordinates to the points. Otherwise number all points from one.}

\item{...}{If 2D arguments passed to the \link{aes_string} function in
\link{geom_point} or \link{geom_line}.}
}
\value{
A ggplot2 object.
}
\description{
Plot the polytope (bounded convex set) of a linear mathematical program
}
\author{
Lars Relund \email{lars@relund.dk}
}
