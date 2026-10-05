#!/usr/bin/env bash
# Builds / serves the site in Docker with the same Jekyll + plugin versions GitHub Pages uses.
#
#   ./jekyll.sh build    generate the site into ./_site
#   ./jekyll.sh serve    preview on http://localhost:4000 with live reload
#   ./jekyll.sh update   upgrade gems to the latest github-pages release (rewrites Gemfile.lock)
#
# The sources are mounted read-only and the generated site is streamed back as a tar archive,
# so it also works with a rootless / remote Docker daemon that cannot write into bind mounts.
# Installed gems are cached in the `jopenspace-gems` Docker volume.
set -euo pipefail

cd "$(dirname "$0")"
SRC="$PWD"
IMAGE="ruby:3.3"

# Gemfile is copied out of the read-only source so Bundler can work next to it.
PREPARE='mkdir -p /bundle && cp /srv/src/Gemfile /srv/src/Gemfile.lock /bundle/ && cd /bundle && bundle install --quiet >&2 && cd /srv/src'

run() {
  docker run --rm "$@"
}

common_args=(
  -v jopenspace-gems:/gems -e BUNDLE_PATH=/gems -e BUNDLE_GEMFILE=/bundle/Gemfile
  -e PAGES_REPO_NWO=novoj/jOpenSpace -e JEKYLL_GITHUB_TOKEN="${JEKYLL_GITHUB_TOKEN:-}"
  -v "$SRC":/srv/src:ro -w /srv/src
)

case "${1:-}" in
  build)
    rm -rf _site && mkdir _site
    run "${common_args[@]}" "$IMAGE" bash -c "$PREPARE && bundle exec jekyll build -d /tmp/site >&2 && tar -C /tmp/site -cf - ." \
      | tar -C _site -xf -
    echo "Site generated into $SRC/_site"
    ;;
  serve)
    tty_args=(); [ -t 0 ] && tty_args=(-it)
    # The file watcher crashes on directories the container cannot read (e.g. a private .remember)
    hide_args=(); [ -d .remember ] && hide_args=(--tmpfs /srv/src/.remember)
    run "${tty_args[@]}" "${common_args[@]}" "${hide_args[@]}" -p 4000:4000 -p 35729:35729 "$IMAGE" bash -c \
      "$PREPARE && bundle exec jekyll serve -d /tmp/site --host 0.0.0.0 --livereload --force_polling"
    ;;
  update)
    run "${common_args[@]}" "$IMAGE" bash -c \
      "mkdir -p /bundle && cp /srv/src/Gemfile /bundle/ && cd /bundle && bundle update --all >&2 && cat Gemfile.lock" \
      > Gemfile.lock.new
    mv Gemfile.lock.new Gemfile.lock
    echo "Gemfile.lock updated"
    ;;
  *)
    sed -n '2,6p' "$0" | sed 's/^# \?//'
    exit 1
    ;;
esac
