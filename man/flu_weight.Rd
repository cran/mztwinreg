\name{flu_weight}
\alias{flu_weight}
\docType{data}
\title{
Flu, Body Weight and DNA methylation
}
\description{
An artificial dataset containing information on flu, body weight and DNA methylation at an immune system gene locus, as well as demographic variables. 
}
\usage{data("flu_weight")}
\format{
  A data frame with 200 observations on the following 7 variables.
  \describe{
    \item{\code{DNAmeth}}{a numeric vector: DNA methylation fraction (ranging 0-1) at an immune system gene locus}
    \item{\code{FluNow}}{a numeric vector: Presence of severe flu at the moment of sample collection}
    \item{\code{FluChild}}{a numeric vector: History of recurrent flu during childhood}
    \item{\code{Gender}}{a character vector: Pair's gender}
    \item{\code{Age}}{a numeric vector: Pair's age}
    \item{\code{Weight}}{a numeric vector: Body weight in kilograms}
    \item{\code{PairNum}}{a numeric vector: Randomly assigned pair number}
  }
}
\details{
As observed from this dataset, the individuals of the sample are sorted following two criteria: 1) twin pairs are put together (adjacent rows), and 2) all twins are discordant for present flu (\code{FluNow}). 

The second condition is necessary only when using the \code{log_dif} function. 
 
It is recommended pre-sorting all datasets used along with this R package following criterion "1" or criteria "1" and "2".   
}
