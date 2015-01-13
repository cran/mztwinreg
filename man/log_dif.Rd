\name{log_dif}
\alias{log_dif}
\title{
Test for intrapair logarithm-based phenotypic differences based on pair-level predictor variables
}
\description{
Linear regression model to test whether the intrapair phenotypic differences in a continuous outcome (i.e., DNA methylation) in phenotype-discordant pairs are due to factors that are identical for both co-twins (i.e., a genotype). It is based on the work on Epigenetic Epidemiology by Tan, Q. (2013). It is similar to the \code{abs_dif} function in this package, inspired by Berg, K. (1994). 
}
\usage{
log_dif(formula, data, ...)
}
\arguments{
  \item{formula}{
an object of class \code{formula} (or one that can be coerced to that class): a symbolic description of the model to be fitted. See \code{formula}. 
}
  \item{data}{
a data frame containing the variables in the model.
}
  \item{\dots}{
additional arguments to be passed to either \code{ols}, from the \code{rms} package. 
}
}
\details{
Similar to the model implemented in the \code{abs_dif} function in this package, \code{log_dif} tests whether the logarithm of the difference in an outcome measure in phenotype-discordant pairs is explained by paired-level exposures such as age. Of note, the affected co-twin is set before (one row above of) his/her co-twin in the \code{data} dataset. 
This model was originally proposed by Tan, Q. (2013) in the context of Epigenetic Epidemiology, to evaluate whether phenotype-discordant pairs have DNA methylation differences due to pair-level exposures. 
}
\value{
\code{log_dif} returns an object of \code{\link{class}} c("ols" "rms" "lm"). 
}
\references{
Tan, Q. (2013). Epigenetic Epidemiology of Complex Diseases Using Twins. Medical Epigenetics, 1(1), 46-51.

Tan, Q., Frost, M., Heijmans, B. T., von Bornemann Hjelmborg, J., Tobi, E. W., Christensen, K., & Christiansen, L. (2014). Epigenetic signature of birth weight discordance in adult twins. BMC genomics, 15(1), 1062.
}
\author{
Aldo Cordova-Palomera. 
}
\seealso{
\code{\link{rms}}, \code{\link{ols}}  
}
\examples{
data(flu_weight)

# The linear regression below tests whether DNA methylation differences at a
# given locus are predicted by pair level variables (such as gender, age 
# or both). 
(logarithm_differences <- log_dif(DNAmeth ~ Gender + Age, data=flu_weight))
}
