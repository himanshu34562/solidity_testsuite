#!/bin/bash
# Usage:
#   ./run_local.sh <folder>              -> run all .sol files under that folder
#   ./run_local.sh <folder> <solc-ver>   -> also switch solc-select first
#   ./run_local.sh                       -> run everything under testcases/

set -uo pipefail

TARGET="${1:-testcases}"
VERSION="${2:-}"

if [ -n "$VERSION" ]; then
  solc-select use "$VERSION" || { echo "Failed to switch to solc $VERSION"; exit 1; }
fi

if [ ! -d "$TARGET" ]; then
  echo "Folder not found: $TARGET"
  exit 1
fi

echo "Target folder: $TARGET"
echo "Using solc version: $(solc --version | grep Version)"
echo "-----------------------------------------"

PASS=0
FAIL=0
FAILED_FILES=()

LOGDIR="logs/$(echo "$TARGET" | tr '/' '_')"
mkdir -p "$LOGDIR"

while IFS= read -r -d '' f; do
  relname="${f#$TARGET/}"
  logbase="$LOGDIR/$(echo "$relname" | tr '/' '_')"

  if solc "$f" --bin > "${logbase}.out" 2>"${logbase}.err"; then
    echo "PASS: $relname"
    PASS=$((PASS+1))
  else
    echo "FAIL: $relname"
    FAIL=$((FAIL+1))
    FAILED_FILES+=("$relname")
  fi
done < <(find "$TARGET" -name "*.sol" -print0 | sort -z)

echo "-----------------------------------------"
echo "Total: $((PASS+FAIL))  Pass: $PASS  Fail: $FAIL"

if [ "$FAIL" -gt 0 ]; then
  echo
  echo "Failed files:"
  for ff in "${FAILED_FILES[@]}"; do
    echo "  - $ff  (see $LOGDIR/$(echo "$ff" | tr '/' '_').err)"
  done
  exit 1
fi

exit 0
