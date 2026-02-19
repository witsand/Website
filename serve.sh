#!/usr/bin/env bash
set -euo pipefail

# Add gem bin to PATH (needed when gems are user-installed)
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"

cd "$(dirname "$0")"

PORT="${1:-4000}"

# Install dependencies if needed
if [ ! -d vendor/bundle ]; then
  echo "Installing dependencies..."
  bundle config set --local path 'vendor/bundle'
  bundle install
fi

# Kill any existing Jekyll server on the chosen port
if lsof -ti:"$PORT" >/dev/null 2>&1; then
  echo "Port $PORT is in use. Killing existing process..."
  kill "$(lsof -ti:"$PORT")" 2>/dev/null || true
  sleep 1
fi

echo "Starting Jekyll on http://127.0.0.1:$PORT/"
bundle exec jekyll serve --port "$PORT" --livereload
