#' Make (and edit) a new site.
#'
#' @inheritParams rmarkdown::draft
#' @export
#' @examples
#' \dontrun{
#'
#' top3site::make_site()
#' }
make_site <- function(file = "index.Rmd",
                      template = "basic",
                      edit = TRUE) {

  rmarkdown::draft(
    file=file,
    template = template,
    package="top3site")

}



#'
#'
basic <- function(css) {
    rmarkdown::html_document(
      theme = NULL,
      self_contained = TRUE,
      mathjax = NULL,
      template = system.file("html", "basic.html", package = "top3site"),
      css = css,
      includes = NULL,
      md_extensions = "-autolink_bare_uris"
    )
}
