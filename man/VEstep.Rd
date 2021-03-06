% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Infer.R
\name{VEstep}
\alias{VEstep}
\title{Computes the variational expectation step of the algorithm}
\usage{
VEstep(
  MO,
  SO,
  SH,
  Omega,
  W,
  Wg,
  MH,
  Pg,
  logSTW,
  logSTWg,
  alpha,
  it1,
  verbatim,
  trackJ = FALSE,
  hist = FALSE
)
}
\arguments{
\item{MO}{Matrix of observed means.}

\item{SO}{Matrix of observed marginal variances.}

\item{SH}{Matrix of observed hidden variances.}

\item{Omega}{matrix containing the precision terms of precision matrices faithful ot a tree.}

\item{W}{Edges weights matrix.}

\item{Wg}{Variational edges weights matrix.}

\item{MH}{Matrix of hidden means.}

\item{Pg}{Edges probabilities matrix.}

\item{logSTW}{Log of the Matrix Tree quantity of the W matrix.}

\item{logSTWg}{Log of the Matrix Tree quantity of the Wg matrix.}

\item{alpha}{Tempering parameter.}

\item{it1}{Checks if nestorFit is at its first iteration.}

\item{verbatim}{Displays verbose if set to 2.}

\item{trackJ}{Boolean for evaluating the lower bound at each parameter update.}

\item{hist}{Boolean for printing edges weights histogram at each iteration.}
}
\value{
Quantities required by the Mstep funciton:
\itemize{
\item{Pg:}{ edges probabilities.}
\item{Wg:}{ edges variational weights.}
\item{M:}{ variational means.}
\item{S:}{ variational marginal variances.}
\item{LB:}{ lower bound values.}
\item{logSTWg:}{ log of the Matrix Tree quantity of the Wg matrix.}
\item{max.prec:}{ boolean tracking the reach of maximal precision during computation.}}
}
\description{
Computes the variational expectation step of the algorithm
}
