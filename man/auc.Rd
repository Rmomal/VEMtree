% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Visualize.R
\name{auc}
\alias{auc}
\title{wraper of auc from ROCR}
\usage{
auc(pred, label)
}
\arguments{
\item{pred}{Predictions.}

\item{label}{Labels.}
}
\value{
The Area Under the Curve value.
}
\description{
wraper of auc from ROCR
}
\examples{
 data=generate_missing_data(n=100,p=10,r=1,type="scale-free", plot=FALSE)
PLNfit<-norm_PLN(data$Y)
MO<-PLNfit$MO
SO<-PLNfit$SO
sigma_O=PLNfit$sigma_O
initClique=data$TC
initList=initVEM(cliqueList=initClique,sigma_O, MO,r=1 )
nestorFit=nestorFit( MO,SO, initList=initList, maxIter=3,verbatim=1)
res=auc(nestorFit$Pg,data$G)
}
