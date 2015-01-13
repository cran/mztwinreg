\name{fam_env}
\alias{fam_env}
\title{
Linear and logistic regression models for familiar and unique environmental factors
}
\description{
This function implements linear and logistic regression models to test for the association between an outcome phenotype and both the familial (genes + shared environment) and the unique environmental influences on a predictor variable. 
}
\usage{
fam_env(formula, BbBw = NULL, regression = "linear", cluster = "default", 
        adjust = "robcov", robcov_method = "huber", bootcov_B = 200, data, ...)
}
\arguments{
  \item{formula}{
an object of class \code{formula} (or one that can be coerced to that class): a symbolic description of the model to be fitted. See \code{formula}. 
}
  \item{BbBw}{
the name of the predictor variable(s) (already in \code{formula}) for which the familial and the unique environmental influences are going to be evaluated.  
}
  \item{regression}{
the type of regression model to be fitted. Use either \code{'linear'} (default) or \code{'logistic'}. 
}
  \item{cluster}{
a vector identifying the pairs in the sample. If not specified, the default value assumes that twin pairs are introduced in adjacent rows. 
}
  \item{adjust}{
a method to adjust for correlated responses (heteroskedasticity) of twin pairs. Use either \code{'robcov'} (default) or \code{'bootcov'}. 
}
  \item{robcov_method}{
if \code{adjust = 'robcov'} (default) is selected, it allows choosing a method to adjust the variance-covariance matrix. Use either \code{'huber'} (default: Huber-White sandwich estimator) or \code{'efron'} (especially for small samples; see \code{\link{robcov}}). 
}
  \item{bootcov_B}{
if \code{adjust = 'bootcov'} is selected, it allows specifying the number of bootstrap repetitions to computes an estimate of the covariance matrix for a set of regression coefficients. 
}
  \item{data}{
a data frame containing the variables in the model.
}
  \item{\dots}{
additional arguments to be passed to either \code{ols} (linear regression) or \code{lrm} (logistic model), from the \code{rms} package. 
}
}
\details{
As shown by Carlin, J. B. et al. (1994), these cluster-based regression models allow parsing out familial and environmental factors contributing to the value of a predictor variable. 
}
\value{
\code{fam_env} returns an object of \code{\link{class}} "rms", along with either c("ols", "lm") (linear models) or c("lrm", "glm") (logistic models). 
}
\references{
Carlin, J. B., Gurrin, L. C., Sterne, J. A., Morley, R., & Dwyer, T. (2005). Regression models for twin studies: a critical review. International Journal of Epidemiology, 34(5), 1089-1099.
}
\author{
Developed by Aldo Cordova-Palomera, following Carlin, J. B. et al. (1994). 
}
\seealso{
\code{\link{rms}}, \code{\link{ols}}, \code{\link{lrm}}, \code{\link{robcov}}, \code{\link{bootcov}} 
}
\examples{
data(flu_weight)

# The linear regression below tests whether the intrapair differences in 
# DNA methylation of a given twin-pair are predicted by its differences in
# either familial (Bb) or environmental (Bw) factors influencing weight 
# (in kilograms). 
(fam_env_linear <- fam_env(DNAmeth ~ Gender + Age + Weight, BbBw="Weight", 
regression='linear', data=flu_weight))

# The linear regression below tests whether the intrapair differences in
# flu (binary outcome) of a given twin-pair are predicted by its differences
# in either familial (Bb) or environmental (Bw) factors influencing weight 
# (in kilograms). 
(fam_env_logistic <- fam_env(FluNow ~ Gender + Age + Weight, BbBw="Weight", 
regression='logistic', data=flu_weight))
}
