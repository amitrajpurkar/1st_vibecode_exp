#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SITE_DIR="${ROOT_DIR}/site"
PUBLISH_REPO_DIR="${ROOT_DIR}/../../amitrajpurkar.github.io"

usage() {
  cat <<EOF
Usage: ./docs.sh <command>

Commands:
  serve    Start local preview server (http://127.0.0.1:8000)
  publish  Build site and copy to GH Pages repo
  commit   Commit and push GH Pages repo
             -m "message"  Optional commit message (default: "updated docs")

Typical workflow:
  ./docs.sh serve      # Step 1: Preview locally
  ./docs.sh publish    # Step 2: Build and copy to GH Pages repo
  ./docs.sh commit     # Step 3: Commit and push
EOF
}

cmd_serve() {
  echo "== Starting local preview server =="
  echo "Open http://127.0.0.1:8000 in your browser. Press Ctrl+C to stop."
  echo
  (cd "${ROOT_DIR}" && mkdocs serve)
  echo
  echo "Next step: ./docs.sh publish"
}

cmd_publish() {
  echo "== Build: mkdocs build --clean =="
  (cd "${ROOT_DIR}" && mkdocs build --clean)

  if [[ ! -d "${SITE_DIR}" ]]; then
    echo "ERROR: '${SITE_DIR}' not found after build." >&2
    exit 1
  fi

  if [[ ! -d "${PUBLISH_REPO_DIR}" ]]; then
    echo "ERROR: GH Pages repo not found at '${PUBLISH_REPO_DIR}'." >&2
    exit 1
  fi

  echo
  echo "== Copy: site/* -> ${PUBLISH_REPO_DIR}/ =="
  cp -r "${SITE_DIR}/"* "${PUBLISH_REPO_DIR}/"

  echo
  echo "== Changes in GH Pages repo =="
  git -C "${PUBLISH_REPO_DIR}" status --short

  echo
  echo "Done. Next step: ./docs.sh commit"
}

cmd_commit() {
  if [[ ! -d "${PUBLISH_REPO_DIR}" ]]; then
    echo "ERROR: GH Pages repo not found at '${PUBLISH_REPO_DIR}'." >&2
    exit 1
  fi

  local msg="updated docs"
  if [[ "${1:-}" == "-m" && -n "${2:-}" ]]; then
    msg="$2"
  fi

  echo "== Committing and pushing GH Pages repo =="
  git -C "${PUBLISH_REPO_DIR}" add .
  git -C "${PUBLISH_REPO_DIR}" commit -m "${msg}"
  git -C "${PUBLISH_REPO_DIR}" push

  echo
  echo "Done. Site published at https://amitrajpurkar.github.io/"
}

case "${1:-}" in
  serve)   cmd_serve ;;
  publish) cmd_publish ;;
  commit)  shift; cmd_commit "$@" ;;
  help)    usage ;;
  *)       usage; exit 1 ;;
esac
