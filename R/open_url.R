#' Open URL in a desktop web browser
#'
#' @param url The URL that we want to view.
#' @param browser The name of the web browser.
#' @examples
#' # Open the RStudio website in a new Safari tab
#' open_url("http://www.rstudio.com")
#'
#' @importFrom processx run
#' @export
open_url <- function(url,
                     browser = "safari") {

  run_result <-
    processx::run("open", c("-a", "Safari", url))
}
