#' metabias S3 class
#'
#' @name metabias-class
#' @rdname metabias-class
#' @export
#'
#' @description A object of class `metabias` is the result of fitting one or
#'   more models to a dataset with one row per study being meta-analyzed. These
#'   models are either (1) a meta-analysis with a correction for one or more
#'   within-study or across-study biases, or (2) a sensitivity analysis for
#'   meta-analyses with respect to these biases. Examples of functions that
#'   return such objects include:
#'
#'   - `PublicationBias::pubbias_meta()`
#'   - `PublicationBias::pubbias_svalue()`
#'   - `phacking::phacking_meta()`
#'   - `multibiasmeta::multibias_meta()`
#'   - `multibiasmeta::multibias_evalue()`
#'
#' @param data Dataframe containing data used to fit the model(s), with added
#'   columns for any values computed during model fitting.
#' @param values List of values of arguments passed to the function.
#' @param stats Dataframe of summary statistics from the model fit(s).
#' @param fits List of fitted objects (which have a class that depends on the
#'   underlying fitting methods, e.g. [`robumeta::robu`] or [`rstan::stanfit`]).
#'
#' @return An object of class `metabias`, which consists of a list containing
#'   the elements `data`, `values`, `stats`, `fits` (corresponding to the
#'   arguments passed).
#'
#' @examples
#' # example model from robumeta::robu()
#' hier_mod <- robumeta::robu(effectsize ~ binge + followup + sreport + age,
#'                            data = robumeta::hierdat, studynum = studyid,
#'                            var.eff.size = var, modelweights = "HIER",
#'                            small = TRUE)
#'
#' ci <- 0.95  # example set value
#' hier_mb <- metabias(data = robumeta::hierdat,                 # data passed to model
#'                     values = list(ci_level = ci),             # value used
#'                     stats = robu_ci(hier_mod, ci_level = ci), # stats from model
#'                     fits = list("robu" = hier_mod))           # model object
#'
#' hier_mb
#' summary(hier_mb)
metabias <- function(data = data.frame(), values = list(),
                     stats = data.frame(), fits = list()) {
  new_metabias(list(data = data, values = values, stats = stats, fits = fits))
}

#' Constructor for metabias S3 class
#'
#' @rdname metabias-class
#'
#' @param x List with elements "data", "values", "stats", "fits".
#'
#' @export
new_metabias <- function(x = list()) {
  stopifnot(is.list(x))
  structure(x, class = c("metabias", "list"))
}
