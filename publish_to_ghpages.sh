#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SITE_DIR="${ROOT_DIR}/site"
PUBLISH_REPO_DIR="${ROOT_DIR}/../../amitrajpurkar.github.io"
OPEN_SHELL=false

if [[ "${1:-}" == "--shell" ]]; then
  OPEN_SHELL=true
fi

echo "== Build: mkdocs build --clean =="
(cd "${ROOT_DIR}" && mkdocs build --clean)

if [[ ! -d "${SITE_DIR}" ]]; then
  echo "ERROR: '${SITE_DIR}' not found. Run 'mkdocs build --clean' first." >&2
  exit 1
fi

if [[ ! -d "${PUBLISH_REPO_DIR}" ]]; then
  echo "ERROR: publish repo dir '${PUBLISH_REPO_DIR}' not found." >&2
  exit 1
fi

# echo "== Diff: '${SITE_DIR}' vs '${PUBLISH_REPO_DIR}' =="
# diff -r "${SITE_DIR}" "${PUBLISH_REPO_DIR}" || true

echo

echo "== Copy: '${SITE_DIR}/*' -> '${PUBLISH_REPO_DIR}/' =="
cp -r "${SITE_DIR}/"* "${PUBLISH_REPO_DIR}/"

echo

echo "== Done =="

if [[ "${OPEN_SHELL}" == "true" ]]; then
  echo "Opening an interactive shell in publish repo: '${PUBLISH_REPO_DIR}'"
  cd "${PUBLISH_REPO_DIR}"
  exec "${SHELL:-/bin/bash}"
else
  echo "NOTE: Running a script cannot change your current terminal directory."
  echo "To work in the publish repo next, run:"
  echo "  cd \"${PUBLISH_REPO_DIR}\""
fi

echo "Next steps (manual):"
echo "  git status"
echo "  git add ."
echo "  git commit -m \"updated docs\""
echo "  git push"
