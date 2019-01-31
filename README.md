# MATSS-pipeline

## Overview
This project is the development of a computational platform to serve as an analysis pipeline for [MATSS](https://github.com/weecology/MATSS)--Macroecological Analysis of Time Series Structure.

There are 2 main objectives:

* create an R package, *MATSS*, to enable programmatic access to different ecological time series datasets AND analysis methods
* support an automated pipeline to generate analyses, collate results, and identify broad patterns

## Contributing

For more information about contributing code, datasets, or analyses, please check out the [Contributing Guide](CONTRIBUTING.md).

## Installation

You can install the `MATSS` package from github with:

``` r
# install.packages("devtools")
devtools::install_github("weecology/MATSS-pipeline")
```

## Examples

{add examples of using the `MATSS` package to get data and/or use the analysis methods}

## Running the Analyses

To run the analysis component of this project, you will want to clone or copy the repository, *in addition* to installing the package. (*note that you can also install the package locally from the files*)

The file `analysis/pipeline.R` has a full script that generates the Drake plan for the analyses and then runs it. When the code is run, these steps occur in sequence:
(1) R creates a list of objects that need to be created and their dependencies (whether certain outputs depend on other outputs)
(2) R checks the list of objects and code against its database of objects (usually stored in the `.drake` hidden folder). If any objects are out of date (because they are missing or the code / dependencies have changed), then they are queued up to be re-created.
(3) R makes any objects that it needs to, including final reports, such as [LDA report](lda_report.md).