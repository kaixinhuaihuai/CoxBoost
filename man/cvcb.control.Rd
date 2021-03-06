\name{cvcb.control}
\alias{cvcb.control}
\title{Control paramters for cross-validation in \code{iCoxBoost}}
\description{
This function allows to set the control parameters for cross-validation to be passed into a call to \code{\link{iCoxBoost}}.  
}
\usage{
cvcb.control(K=10,type=c("verweij","naive"),parallel=FALSE,
			 upload.x=TRUE,multicore=FALSE,folds=NULL) 
}
\arguments{
\item{K}{number of folds to be used for cross-validation. If \code{K} is larger or equal to the number of events in the data to be analyzed, leave-one-out cross-validation is performed.}
\item{type}{way of calculating the partial likelihood contribution of the observation in the hold-out folds: \code{"verweij"} uses the more appropriate method described in Verweij and van Houwelingen (1996), \code{"naive"} uses the approach where the observations that are not in the hold-out folds are ignored (often found in other R packages).}
\item{parallel}{logical value indicating whether computations in the cross-validation folds should be performed in parallel on a compute cluster, using package \code{snowfall}. Parallelization is performed via the package \code{snowfall} and the initialization function of of this package, \code{sfInit}, should be called before calling \code{iCoxBoost}.}
\item{multicore}{indicates whether computations in the cross-validation folds should be performed in parallel, using package \code{parallel}. If \code{TRUE}, package \code{parallel} is employed using the default number of cores. A value larger than \code{1} is taken to be the number of cores that should be employed.}
\item{upload.x}{logical value indicating whether \code{x} should/has to be uploaded to the
compute cluster for parallel computation. Uploading this only once (using \code{sfExport(x)} from library \code{snowfall}) can save much time for large data sets.}
\item{folds}{if not \code{NULL}, this has to be a list of length \code{K}, each element being a vector of indices of fold elements. Useful for employing the same folds for repeated runs.}
}
\value{
List with elements corresponding to the call arguments.
}
\author{
Written by Harald Binder \email{binderh@uni-mainz.de}. 
}
\references{
Verweij, P. J. M. and van Houwelingen, H. C. (1993). Cross-validation in survival analysis. Statistics in Medicine, 12(24):2305-2314.
}
\seealso{
\code{\link{iCoxBoost}}, \code{\link{cv.CoxBoost}}
}
\keyword{models} \keyword{smooth} \keyword{regression}
