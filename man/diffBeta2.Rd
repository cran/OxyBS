\name{diffBeta2}
\alias{diffBeta2}
\title{First derivative of beta minus-log-pdf with respect to second parameter}
\description{First derivative of -log(beta pdf) wrt b (second) parameter}
\usage{diffBeta2(x,a,b)}
\arguments{
  \item{x}{beta value}
  \item{a}{a parameter (first)}
  \item{b}{b parameter (second)}
}
\details{First derivative of beta minus-log-pdf with respect to second parameter; 
used for maximum likelihood estimation, not typically called by user.}
\value{
  first derivative with respect to b (second) parameter
}
\author{E. Andres Houseman}
\seealso{\code{\link{diffBeta1}},\code{\link{scoreOxBS}}}
