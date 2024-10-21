doi2md <- function(doi = NULL, style = NULL) {

  doi <- gsub("https://doi.org/", "", doi)

  dt <- rcrossref::cr_works(doi)$data

  if (!is.null(style)) {
    out <- rcrossref::cr_cn(doi, format = "text", style = "ecology-letters")
  } else {

    out <- paste(
      paste(dt$author[[1]]$family, collapse = ", "),
      paste0("(", substr(dt$created, start = 1, stop = 4), ")"),
      paste0("[", dt$title, "](", "https://doi.org/", doi, ")."),
      paste0("*", dt$container.title, "*"),
      dt$volume,
      paste0("(", dt$issue, "):"),
      dt$page,
      collapse = " "
      )

  }

  cat(out)

}




