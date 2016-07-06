#! /usr/bin/env Rscript

splitIntoWords <- function(line) unlist(strsplit(line, "[[:space:]]+"))

con <- file("stdin", open = "r")
while (length(line <- readLines(con, n = 1, warn = FALSE)) > 0) {
  line = gsub('[[:punct:]]', '', line)
  line <- tolower(line)
  words <- splitIntoWords(line)
  for (w in words)
    cat(w, "\t1\n", sep="")
}
close(con)
