% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Visualize.R
\name{ppvtpr}
\alias{ppvtpr}
\title{Computes precision and recall statistics separating observed from hidden variables, and (FPR,FNR) for hidden variables .}
\usage{
ppvtpr(probs, G, r, thresh = 0.5)
}
\arguments{
\item{probs}{Matrix of estimated edges probabilities.}

\item{G}{Original graph.}

\item{r}{Number of missing actors.}

\item{thresh}{Required threshold for criteria computations, default to 0.5.}
}
\value{
\itemize{
\item{PPV:}{ precision of the whole data.}
\item{PPVH:}{ precision regarding observed data.}
\item{PPVO:}{ precision regarding hidden data.}
\item{TPR:}{ recall of the whole data.}
\item{TPRH:}{ recall regarding observed data.}
\item{TPRO:}{ recall regarding hidden data.}
\item{FPRH:}{ false Positive Rate of hidden data.}
\item{FNRH:}{ false Negative Rate of hidden data.}
}
}
\description{
Computes precision and recall statistics separating observed from hidden variables, and (FPR,FNR) for hidden variables .
}
\examples{
data=generate_missing_data(n=100,p=10,r=1,type="scale-free", plot=FALSE)
PLNfit<-norm_PLN(data$Y)
MO<-PLNfit$MO
SO<-PLNfit$SO
sigma_O=PLNfit$sigma_O
#-- use true clique for example
initClique=data$TC
#-- initialize the VEM
initList=initVEM(cliqueList=initClique,sigma_O, MO,r=1 )
nestorFit=nestorFit(MO,SO, initList=initList, maxIter=3,verbatim=1 )
#-- obtain criteria
ppvtpr(nestorFit$Pg,r=1, data$G)
}
