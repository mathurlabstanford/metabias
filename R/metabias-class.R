#' metabias S3 class
#'
#' @name metabias-class
#' @rdname metabias-class
#'
#' @description A object of class `metabias` is the result of fitting one or
#'   more models to a dataset with one row per study being meta-analyzed. These
#'   models are either (1) a meta-analysis with a correction for one or more
#'   within-study or across-study biases, or (2) a sensitivity analysis for
#'   meta-analyses with respect to these biases. Examples of functions that
#'   return such objects include:
#'
#'   - [PublicationBias::pubbias_meta()]
#'   - [PublicationBias::pubbias_svalue()]
#'   - [phacking::phacking_meta()]
#'   - `multibiasmeta::multibias_meta()`
#'   - `multibiasmeta::multibias_evalue()``
#'
#' @param data Dataframe containing data used to fit the model(s), with added
#'   columns for any values computed during model fitting.
#' @param values List of values of arguments passed to the function.
#' @param stats Dataframe of summary statistics from the model fit(s).
#' @param fits List of fitted objects (which have a class that depends on the
#'   underlying fitting methods, e.g. [`robumeta::robu`] or [`rstan::stanfit`]).
#'
#' @export
metabias <- function(data = data.frame(), values = list(),
                     stats = data.frame(), fits = list()) {
  new_metabias(list(data = data, values = values, stats = stats, fits = fits))
}

#' Constructor for metabias S3 class
#'
#' @param x List with elements "data", "values", "stats", "fits"
#'
#' @export
new_metabias <- function(x = list()) {
  stopifnot(is.list(x))
  structure(x, class = c("metabias", "list"))
}
