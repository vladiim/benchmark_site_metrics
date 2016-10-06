extract.monetatePage <- function(page) {
  extract_tables('data/MonetateEQ2-2016.pdf', pages = page, method = 'data.frame')
}

extract.monetatePageAndSave <- function(page) {
  write.csv(extract.monetatePage(page)[[1]], paste0('data/page_', page, '.csv'))
}

extract.monetatePages <- function() {
  lapply(11:21, extract.monetatePageAndSave)
}
