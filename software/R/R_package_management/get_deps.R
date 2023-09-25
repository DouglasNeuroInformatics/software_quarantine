#!/usr/bin/env Rscript
library(pkgdepends)
args = commandArgs(trailingOnly=TRUE)
prop <- pkgdepends::new_pkg_installation_proposal(
  args[1], 
  config = list(dependencies = TRUE)
)
prop$solve()
prop$show_solution()
