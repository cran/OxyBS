\name{diffBeta1}
\alias{diffBeta1}
\title{First derivative of beta minus-log-pdf with respect to first parameter}
\description{First derivative of -log(beta pdf) wrt a (first) parameter}
\usage{diffBeta1(x,a,b)}
\arguments{
  \item{x}{beta value}
  \item{a}{a parameter (first)}
  \item{b}{b parameter (second)}
}
\details{First derivative of beta minus-log-pdf with respect to first parameter; 
used for maximum likelihood estimation, not typically called by user.}
\value{
  first derivative with respect to a (first) parameter
}
\author{E. Andres Houseman}
\seealso{\code{\link{diffBeta2}},\code{\link{scoreOxBS}}}
