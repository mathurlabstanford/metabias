#' @name params
#' @title Documentation for params common across metabias packages.
#'
#' @param yi A vector of point estimates to be meta-analyzed.
#' @param vi A vector of estimated variances (i.e., squared standard errors) for
#'   the point estimates.
#' @param sei A vector of estimated standard errors for the point estimates.
#'   (Only one of `vi` or `sei` needs to be specified).
#' @param cluster Vector of the same length as the number of rows in the data,
#'   indicating which cluster each study should be considered part of (defaults
#'   to treating studies as independent; i.e., each study is in its own cluster).
#'
#' @param favor_positive `TRUE` if publication bias are
#'   assumed to favor significant positive estimates; `FALSE` if assumed to
#'   favor significant negative estimates.
#' @param alpha_select Alpha level at which an estimate's probability of being
#'   favored by publication bias is assumed to change (i.e.,
#'   the threshold at which study investigators, journal editors, etc., consider
#'   an estimate to be significant).
#' @param ci_level Confidence interval level (as proportion) for the corrected
#'   point estimate. (The alpha level for inference on the corrected point
#'   estimate will be calculated from `ci_level`.)
#' @param small Should inference allow for a small meta-analysis? We recommend
#'   always using `TRUE`.
#'
#' @param selection_ratio Ratio by which publication bias favors affirmative
#'   studies (i.e., studies with p-values less than `alpha_select` and
#'   estimates in the direction indicated by `favor_positive`).
#' @param q The attenuated value to which to shift the point estimate or CI.
#'   Should be specified on the same scale as `yi` (e.g., if
#'   `yi` is on the log-RR scale, then `q` should be as well).
NULL
