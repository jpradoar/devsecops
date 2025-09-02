#!/usr/bin/bash
#
# internal-checks.sh
#
set -euo pipefail
# La IP de la oficina
# Un string que no quiero que se suba a git
KEYWORDS="99.99.99.99|SuperDuperString"
# No quiero que analice estos dos archivos, 
# de lo contrario se encontraria a si mismo
FILTER="pre-commit-config.yaml\|intenral-checks.sh" 


if grep -RIEn "$KEYWORDS" "$@" | grep -vE "$FILTER"; then
  echo "Posible palabra prohibida"
  exit 1
else
  exit 0
fi
