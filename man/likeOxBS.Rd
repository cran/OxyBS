\name{likeOxBS}
\alias{likeOxBS}
\title{Likelihood function for C/5mC/5hmC likelihood estimator}
\description{Likelihood  function for C/5mC/5hmC likelihood estimator}
\usage{likeOxBS(theta, betaBS, betaOxBS, signalBS, signalOxBS)}
\arguments{
  \item{theta}{2-element parameter vector}
  \item{betaBS}{beta value from conventional bisulfite conversion}
  \item{betaOxBS}{beta value from oxy-bisulfite conversion}
  \item{signalBS}{total signal from conventional bisulfite conversion}
  \item{signalOxBS}{total signal from oxy-bisulfite conversion}
}
\details{Likelihood function for C/5mC/5hmC likelihood estimator;
used for maximum likelihood estimation, not typically called by user.}
\value{
  likelihood for C/5mC/5hmC likelihood
}
\author{E. Andres Houseman}
\seealso{\code{\link{fitOneOxBS}}}

