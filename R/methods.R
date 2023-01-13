#' @rdname metabias-class
#'
#' @param object Object of class `metabias`.
#' @param ... Not used.
#'
#' @export
summary.metabias <- function(object, ...) {
  object$stats
}
