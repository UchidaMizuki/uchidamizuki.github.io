# uchidamizuki.github.io

Source for the root site at [uchidamizuki.com](https://uchidamizuki.com), a small
bilingual [Quarto](https://quarto.org) website (landing page + publications list).

This is also the GitHub Pages **user site** that anchors the custom domain: the
`CNAME` file here (`uchidamizuki.com`) makes the domain cascade down to project
sites that don't set their own — notably the blog, which lives in a separate
repository, [UchidaMizuki/blog](https://github.com/UchidaMizuki/blog), and is
served at [uchidamizuki.com/blog](https://uchidamizuki.com/blog).

## Build & publish

Rendering is done locally (the site has no executable code, so this is fast):

```sh
quarto render
```

Quarto writes the site to `docs/`, including a copy of `CNAME`. GitHub Pages is
configured to serve from `main` / `docs`, so committing `docs/` and pushing to
`main` publishes the site.
