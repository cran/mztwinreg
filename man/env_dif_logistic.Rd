\name{env_dif_logistic}
\alias{env_dif_logistic}
\title{
Test for intrapair phenotypic differences in a binary outcome based on intrapair-differences predictor variables
}
\description{
Conditional logit model to test whether the intrapair differences in an outcome phenotype (binary variable) are due to intrapair differences in a predictor phenotype. 
}
\usage{
env_dif_logistic(formula, cluster = "default", data, ...)
}
\arguments{
  \item{formula}{
an object of class \code{formula} (or one that can be coerced to that class): a symbolic description of the model to be fitted. See \code{formula}. 
}
  \item{cluster}{
a vector identifying the pairs in the sample. If not specified, the default value assumes that twin pairs are introduced in adjacent rows. 
}
  \item{data}{
a data frame containing the variables in the model.
}
  \item{\dots}{
additional arguments to be passed to \code{mclogit}, from the \code{mclogit} package. 
}
}
\details{
This is an R implementation of some code proposed by Carlin, J. B. et al. (1994) for Stata. 

Note that this conditional logit model -either in the original version by Carlin, J. B. et al. (1994) or in the current R scripts- is not widely used and may require improvements. 
}
\value{
\code{env_dif_logistic} returns an object of \code{\link{class}} c("mclogit", "lm").
}
\references{
Carlin, J. B., Gurrin, L. C., Sterne, J. A., Morley, R., & Dwyer, T. (2005). Regression models for twin studies: a critical review. International Journal of Epidemiology, 34(5), 1089-1099.
}
\author{
Carlin, J. B. et al. (1994) proposed this model and implemented it in Stata. Aldo Cordova-Palomera adjusted the algorithm for R. 
}
\seealso{
\code{\link{mclogit}}, \code{\link{lm}}, \code{\link{lrm}} 
}
\examples{
data(flu_weight)

# The linear regression below tests whether the intrapair differences in flu 
# presence (binary outcome) of a given twin-pair are predicted by its 
# differences in weight (in kilograms). 
summary(unique_env_logistic <- env_dif_logistic(FluNow ~ Weight, data=flu_weight))
}
