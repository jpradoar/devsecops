#!/usr/bin/env bash
#
# internal-checks.sh
#  Script de ejemplo para pre-commits
#
set -euo pipefail

KEYWORDS="99.99.99.99|SuperDuperString"

# Si no hay archivos como argumentos, salir sin error
if [[ $# -eq 0 ]]; then
  exit 0
fi

if grep -RIEn "$KEYWORDS" "$@"; then
  echo "Posible palabra prohibida"
  exit 1
fi

exit 0
