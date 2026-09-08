#!/usr/bin/env Rscript
# Build the site.
#
# babelquarto renders each language in a temporary copy of the project and
# copies only the rendered output back, so files added via `resources:`
# (CNAME, .nojekyll) can be dropped. Re-add them here.

babelquarto::render_website()

file.copy("CNAME", file.path("docs", "CNAME"), overwrite = TRUE)
if (!file.exists(file.path("docs", ".nojekyll"))) {
  file.create(file.path("docs", ".nojekyll"))
}

message("Built: docs/ (ja) and docs/en/ (en). Commit docs/ and push to publish.")
