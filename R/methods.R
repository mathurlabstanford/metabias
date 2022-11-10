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
#' @param x Object of class `metabias`.
#' @param ... Not used.
#'
#' @export
# length.metabias <- function(x, ...) {
#   list("observations" = nrow(x$data),
#        "values" = length(x$values),
#        "stats" = nrow(x$stats),
#        "fits" = length(x$fits))
# }
