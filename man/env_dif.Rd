\name{env_dif}
\alias{env_dif}
\title{
Test for intrapair phenotypic differences in an outcome based on intrapair-differences predictor variables
}
\description{
Linear regression model to test whether the intrapair differences in an outcome phenotype are due to intrapair differences in a predictor phenotype. 
}
\usage{
env_dif(formula, data, ...)
}
\arguments{
  \item{formula}{
an object of class \code{formula} (or one that can be coerced to that class): a symbolic description of the model to be fitted. See \code{formula}. 
}
  \item{data}{
a data frame containing the variables in the model.
}
  \item{\dots}{
additional arguments to be passed to \code{ols}, from the \code{rms} package. 
}
}
\details{
Inspired by the implementation of Carlin, J. B. et al. (1994), this linear regression model without intercept tests allows evaluating whether intrapair differences in one or more predictor variables are related to intrapair differences in the outcome. 
}
\value{
\code{env_dif} returns an object of \code{\link{class}} "lm". 
}
\references{
Carlin, J. B., Gurrin, L. C., Sterne, J. A., Morley, R., & Dwyer, T. (2005). Regression models for twin studies: a critical review. International Journal of Epidemiology, 34(5), 1089-1099.
}
\author{
Developed by Aldo Cordova-Palomera, following Carlin, J. B. et al. (1994). 
}
\seealso{
\code{\link{lm}}
}
\examples{
data(flu_weight)

# The linear regression below tests whether the intrapair differences in weight
# (in kilograms) of a given twin-pair predict its intrapair differences in DNA 
# methylation levels at a given genomic locus. 
summary(unique_env_linear <- env_dif(DNAmeth ~ Weight, data=flu_weight))
}
