#' Open an image or PDF on the desktop
#'
#' @param file The complete path to an image or PDF file.
#' @importFrom processx run
#' @export
open_image <- open_pdf <- function(file) {

  run_result <-
    processx::run("open", c("-a", "Preview.app", file))
}
