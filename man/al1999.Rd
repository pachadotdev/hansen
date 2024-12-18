% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hansen-package.R
\docType{data}
\name{al1999}
\alias{al1999}
\title{Angrist and Lavy (1999) Dataset on Class Size and Scholastic Achievement}
\format{
A data frame with 4,067 classrooms and 31 variables.
\describe{
\item{schlcode}{School code}
\item{enrollment}{School enrollment (number of students in grade)}
\item{enrollment_boys}{Number of boys in grade}
\item{enrollment_girls}{Number of girls in grade}
\item{c_num4rd}{Number of 4th grade classes in school}
\item{c_type}{Number of special education classes}
\item{flgrm4}{Percentage failed in grammar 4th grade in 1991}
\item{mrkgrm4}{Mean mark in grammar 4th grade in 1991}
\item{ngrm4}{Number of students in grammar 4th grade in 1991}
\item{flmth4}{Percentage failed in math 4th grade in 1991}
\item{mrkmth4}{Mean mark in math 4th grade in 1991}
\item{nmth4}{Number of students in math 4th grade in 1991}
\item{towncode}{Town code}
\item{popcode}{Population code}
\item{grade}{Class grade (4 or 5)}
\item{classid}{Class sequence number}
\item{classize}{Number of students in class}
\item{mathsize}{Number of students tested in mathematics}
\item{avgmath}{Mathematics score}
\item{passmath}{Pass mathematics test indicator}
\item{verbsize}{Number of students tested in reading}
\item{avgverb}{Grammar score}
\item{passverb}{Pass grammar test indicator}
\item{disadvantaged}{School socioeconomic status: percent disadvantaged}
\item{c_num5rd}{Number of 5th grade classes in school}
\item{flgrm5}{Percentage failed in grammar 5th grade in 1991}
\item{mrkgrm5}{Mean mark in grammar 5th grade in 1991}
\item{ngrm5}{Number of students in grammar 5th grade in 1991}
\item{flmth5}{Percentage failed in math 5th grade in 1991}
\item{mrkmth5}{Mean mark in math 5th grade in 1991}
\item{nmth5}{Number of students in math 5th grade in 1991}
}
}
\source{
Angrist, J., & Lavy, V. (1999). "Using Maimonides’ Rule to Estimate
the Effect of Class Size on Scholastic Achievement." \emph{The Quarterly Journal
of Economics}. Data available at
\url{https://economics.mit.edu/faculty/angrist/data1/data/anglavy99}
}
\usage{
al1999
}
\description{
Class sizes, scholastic achievement scores, and various classroom
demographics for 4th and 5th grades. The dataset is derived from the merged
files \code{final4.dta} and \code{final5.dta} with data cleaning adjustments to remove
recording errors, missing observations, class sizes above 44, and enrollments
below 6.
}
\keyword{datasets}
