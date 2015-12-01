\name{fitOneOxBS}
\alias{fitOneOxBS}
\title{Fit one OxyBS result}
\description{Uses maximum likelihood to estimate (C,5mC,5hmC) for one CpG and one specimen}
\usage{fitOneOxBS(betaBS, betaOxBS, signalBS, signalOxBS, eps=1E-5)}
\arguments{
  \item{betaBS}{beta value from conventional bisulfite conversion}
  \item{betaOxBS}{beta value from oxy-bisulfite conversion}
  \item{signalBS}{total signal from conventional bisulfite conversion}
  \item{signalOxBS}{total signal from oxy-bisulfite conversion}
  \item{eps}{small positive value representing numerical zero}
}
\details{Uses maximum likelihood to estimate (C,5mC,5hmC) for one CpG and one specimen; 
not typically called by user.}
\value{
  (C,5mC,5hmC) for one CpG and one specimen.
}
\author{E. Andres Houseman}
\seealso{\code{\link{fitOxBS}}}

