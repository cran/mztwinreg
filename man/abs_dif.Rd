\name{abs_dif}
\alias{abs_dif}
\title{
Test for intrapair phenotypic differences based on pair-level predictor variables
}
\description{
Regression models to test whether the intrapair phenotypic differences are due to factors that are identical for both co-twins (i.e., a genotype). It is based on the work on "variability genes", by Berg, K. (1994). 
}
\usage{
abs_dif(formula, regression = "linear", data, ...)
}
\arguments{
  \item{formula}{
an object of class \code{formula} (or one that can be coerced to that class): a symbolic description of the model to be fitted. See \code{formula}. 
}
  \item{regression}{
the type of regression model to be fitted. Use either \code{'linear'} (default) or \code{'logistic'}. 
}
  \item{data}{
a data frame containing the variables in the model.
}
  \item{\dots}{
additional arguments to be passed to either \code{ols} (linear regression) or \code{lrm} (logistic model), from the \code{rms} package. 
}
}
\details{
Inspired by the "variability gene" concept by Berg, K. (1994), these regression models (linear and logistic) allow determining whether a pair-level variable (i.e., a genotype, which is identical for both co-twins). Further usage details are explained by Cordova-Palomera, A. et al. (2014). 
}
\value{
\code{abs_dif} returns an object of \code{\link{class}} "rms", along with either c("ols", "lm") (linear models) or c("lrm", "glm") (logistic models). 
}
\references{
Berg, K. (1994). Gene-environment interaction: variability gene concept. In Genetic factors in coronary heart disease (pp. 373-383). Springer Netherlands.

Cordova-Palomera, A., Fatjo-Vilas, M., Kebir, O., Gasto, C., Krebs, M. O., & Fananas, L. (2014). Polymorphic variation in the epigenetic gene DNMT3B modulates the environmental impact on cognitive ability: A twin study. European Psychiatry.
}
\author{
Inspired by Berg (1994). Developed by Aldo Cordova-Palomera. See Cordova-Palomera et al. (2014). 
}
\seealso{
\code{\link{rms}}, \code{\link{ols}}, \code{\link{lrm}} 
}
\examples{
data(flu_weight)

# The linear regression below tests whether the intrapair differences in 
# DNA methylation (outcome) depend on pair-specific variables such as gender, 
# age or both. 
# The conceptual justification of the working hypothesis is partly inspired 
# by Fraga, M. F., et al. (2005) Proceedings of the National Academy of 
# Sciences of the United States of America, 102(30), 10604-10609.
(variability_linear <- abs_dif(DNAmeth ~ Gender + Age, data=flu_weight, regression='linear'))

# The logistic regression below tests whether or not there was an 
# increased/decreased rate of phenotypic differences in flu liability during 
# childhood in males, compared with females. 
# Namely, it evaluates there were more intrapair differences in flu liability 
# in one of the genders (male or female).  
(variability_logistic <- abs_dif(FluChild ~ Gender, data=flu_weight, regression='logistic'))
}
