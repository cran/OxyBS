\name{fitOxBS}
\alias{fitOxBS}
\title{Fit OxyBS for one specimen}
\description{Uses maximum likelihood to estimate (C,5mC,5hmC) vectors for one specimen}
\usage{fitOxBS(betaBS, betaOxBS, signalBS, signalOxBS, eps=1E-5)}
\arguments{
  \item{betaBS}{beta value from conventional bisulfite conversion}
  \item{betaOxBS}{beta value from oxy-bisulfite conversion}
  \item{signalBS}{total signal from conventional bisulfite conversion}
  \item{signalOxBS}{total signal from oxy-bisulfite conversion}
  \item{eps}{small positive value representing numerical zero}
}
\details{Uses maximum likelihood to estimate (C,5mC,5hmC) one specimen (many CpGs).}
\value{
  matrix of (C,5mC,5hmC) values (each row corresponds to a separate CpG).
}
\author{E. Andres Houseman}
\examples{
\dontrun{
data(OxyBSSampleData)

nSpecimens <- 30
nCpGs <- 30

# Calculate Total Signals
signalBS <- exampleMethBS+exampleUnmethBS
signalOxBS <- exampleMethOxBS+exampleUnmethOxBS

# Calculate Beta Values
betaBS <- exampleMethBS/signalBS
betaOxBS <- exampleMethOxBS/signalOxBS

# Create container for results
MethOxy <- array(NA,dim=c(nCpGs,nSpecimens,3))
dimnames(MethOxy) <- list(
  rownames(exampleMethBS)[1:nCpGs],
  colnames(exampleMethBS)[1:nSpecimens],
  c("C","5mC","5hmC"))

# Process results (one array at a time)
for(i in 1:nSpecimens){
  MethOxy[,i,] <- fitOxBS(betaBS[,i],betaOxBS[,i],signalBS[,i],signalOxBS[,i])
}

# Check that results sum to one
table(apply(MethOxy,1:2,sum))

# First specimen
MethOxy[,1,]

# Ranges
range(MethOxy[,,1])
range(MethOxy[,,2])
range(MethOxy[,,3])
}}

