# sleepless.seattle.wa.us

## prerequisites

* hugo (say, 0.96 or later; extended edition required)
* go (for hugo module resolution)

## initial setup

```bash
$ git clone git@github.com:anarchivist/sleepless
$ cd sleepless
$ hugo mod get -u
```

## editing

most of the content for this site is intended to be edited in zettlr, but
there may be some weirdness about doing that.

## deployment

while you can build locally using `hugo`, there is a convenience script that
handles the logistics of deploying to SDF, `deploy.sh`.

the script runs `hugo` to build, and then rsyncs the built output in `public`
to sdf, deleting extraneous files at the destination, and setting the
permissions needed for the SDF VHOST webserver (which runs on `norge`).

if one really needs to do so, the variables at the beginning of the
script can be changed to deploy to another host in the SDF cluster.

## TODO

* [ ] handle zettlr-style wikilinks `[[$id]]`
* [ ] insert citations from Zotero export used by zettlr
* [ ] search?
* [ ] better permalinks?
