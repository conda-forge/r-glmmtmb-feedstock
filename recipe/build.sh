#!/bin/bash
export DISABLE_AUTOBREW=1

## capture versions (robust to cross-compilation)
grep "^Version:" ${PREFIX}/lib/R/library/TMB/DESCRIPTION | cut -d' ' -f2 > ${SRC_DIR}/inst/TMB-version
grep "^Version:" ${PREFIX}/lib/R/library/Matrix/DESCRIPTION | cut -d' ' -f2 > ${SRC_DIR}/inst/Matrix-version

${R} CMD INSTALL --build . ${R_ARGS}
