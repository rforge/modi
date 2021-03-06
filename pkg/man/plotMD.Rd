\name{PlotMD}
\alias{PlotMD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{QQ-Plot of Mahalanobis distances}
\description{
 QQ-plot of (squared) Mahalanobis distances vs. scaled F-distribution (or a scaled chisquare distribution). In addition two default cutpoints are proposed.
}
\usage{
PlotMD(dist, p, alpha = 0.95, chisquare=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dist}{ a vector of Mahalanobis distances }
  \item{p}{ the number of variables involved in the Mahalanobis distances}
  \item{alpha}{ a probability for cut-off, usually close to 1}
  \item{chisquare}{A logical indicating the the chisquare distribution should be used instead of the F-distribution}
}
\details{Scaling of the F-distribution as 
 \eqn{median(dist)*qf((1:n)/(n+1),p,n-p)/qf(0.5,p ,n-p)}. First default cutpoint is \eqn{median(dist)*qf(alpha,p,n-p)/qf(0.5,p,n-p)} and second default cutpoint is the alpha-quantile of the Mahalanobis distances. 
}
\value{\item{hmed}{first proposed cutpoint based on F-distribution.}
\item{halpha}{second proposed cutpoint (alpha-quantile)}  
QQ-plot
}
\references{Little, R. & Smith, P. (1987) Editing and imputation for quantitative survey data Journal of the American Statistical Association,  82, 58-68}
\author{Beat Hulliger}
\examples{
data(bushfirem,bushfire.weights)
det.res<-TRC(bushfirem,weights=bushfire.weights)
PlotMD(det.res$dist,ncol(bushfirem))
}
\keyword{Mahalanobis distance}
\keyword{QQ-plot}