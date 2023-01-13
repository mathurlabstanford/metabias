#' [robumeta::robu] CI
#'
#' @description Add a confidence interval to the `reg_table` of a
#'   [robumeta::robu] object.
#'
#' @param robu_fit Object of class [robumeta::robu].
#' @param ci_level Confidence level to use for the confidence interval (defaults
#'   to 0.95).
#'
#' @return A dataframe with the columns `estimate`, `se`, `ci_lower`,
#' `ci_upper`, `p_value`.
#'
#' @export
#' @examples
#' # example model from robumeta::robu()
#' hier_mod <- robumeta::robu(effectsize ~ binge + followup + sreport + age,
#'                            data = robumeta::hierdat, studynum = studyid,
#'                            var.eff.size = var, modelweights = "HIER",
#'                            small = TRUE)
#' robu_ci(hier_mod)
robu_ci <- function(robu_fit, ci_level = 0.95) {
  alpha <- 1 - ci_level
  rt <- robu_fit$reg_table
  ci <- stats::qt(1 - alpha / 2, rt$dfs) * rt$SE
  data.frame(param = rt$labels, estimate = rt$b.r, se = rt$SE,
             ci_lower = rt$b.r - ci, ci_upper = rt$b.r + ci, p_value = rt$prob)
}
