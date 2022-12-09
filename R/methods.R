#' @rdname metabias-class
#'
#' @param x Object of class `metabias`.
#' @param ... Not used.
#'
#' @export
print.metabias <- function(x, ...) {
  utils::str(x)
}

#' @rdname metabias-class
#'
#' @param object Object of class `metabias`.
#' @param ... Not used.
#'
#' @export
summary.metabias <- function(object, ...) {
  object$stats
}
