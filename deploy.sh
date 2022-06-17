#!/bin/sh
USER=matienzo
HOST=iceland.sdf.org
DEPLOY_DIR=/sdf/www/gm/m/matienzo/sleepless.seattle.wa.us

hugo && rsync -rvz --delete -e ssh --chmod=751 public/ ${USER}@${HOST}:${DEPLOY_DIR}

exit 0
