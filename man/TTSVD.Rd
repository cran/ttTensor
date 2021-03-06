\name{TTSVD}
\docType{methods}
\alias{TTSVD}

\title{
Tensor-Train Decomposition by TTSVD
}
\description{
TTSVD incrementaly decomposes the input tensor by singular value decomposition (SVD).
}
\usage{
TTSVD(A, Ranks=NULL, accuracy=NULL)
}

\arguments{
  \item{A}{
The input tensor.
}
  \item{Ranks}{
TT-ranks to specify the lower dimensions.
}
  \item{accuracy}{
The accuracy of the compression.
}
}

\value{
  G : Core tensors
}

\references{
I. V. Oseledets, (2011). Tensor-Train Decomposition. \emph{SIAM J. SCI. COMPUT.}
}
\author{Koki Tsuyuzaki}

\examples{
library("rTensor")
# Tensor data
X1 <- array(rnorm(3*5*7*9*11), c(3,5,7,9,11))
dimnames(X1) <- list(
    I=paste0("i", 1:3),
    J=paste0("j", 1:5),
    K=paste0("k", 1:7),
    L=paste0("l", 1:9),
    M=paste0("m", 1:11)
    )
X1 <- as.tensor(X1)
# TT-ranks
Ranks <- c(p=2, q=4, r=6, s=8)
# TTSVD
out.TTSVD <- TTSVD(X1, Ranks)
out.TTSVD <- TTSVD(X1, accuracy=1E-10)
}

\keyword{methods}