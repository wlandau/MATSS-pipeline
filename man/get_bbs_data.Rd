% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_cleaning.R
\name{get_bbs_data}
\alias{get_bbs_data}
\title{Create BBS population time-series data}
\usage{
get_bbs_data(bbs_data_tables, start_yr = 1965, end_yr = 2017,
  min_num_yrs = 10, region)
}
\arguments{
\item{bbs_data_tables}{list of all BBS tables (counts,region_codes,routes,species,weather)}

\item{start_yr}{num first year of time-series}

\item{end_yr}{num last year of time-series}

\item{min_num_yrs}{num minimum number of years of data between start_yr & end_yr}

\item{region}{region code of data to return (currently uses state codes)}
}
\value{
list of two dataframes, one with abundance data, the other with covariate data
}
\description{
Modified from https://github.com/weecology/bbs-forecasting
and https://github.com/weecology/MATSS-community-change 
Selects sites with data spanning start_yr through end_yr containing at least min_num_yrs of data
samples during that period.
}
\examples{
get_bbs_data(bbs_data_tables=retriever_data()$'breed-bird-survey',region=7)
}
