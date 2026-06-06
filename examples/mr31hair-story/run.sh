#!/usr/bin/env bash
# 엠알31헤어 웹스토리 로컬 실행 (macOS / Linux)
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"
PORT="${PORT:-8000}"
URL="http://localhost:${PORT}/index.html"

echo "▶ 엠알31헤어 웹스토리 서버를 시작합니다..."
echo "  $URL  (종료: Ctrl+C)"

# 1초 뒤 기본 브라우저로 자동 열기
( sleep 1
  if command -v open >/dev/null 2>&1; then open "$URL"
  elif command -v xdg-open >/dev/null 2>&1; then xdg-open "$URL"
  fi ) >/dev/null 2>&1 &

# 로컬 서버 실행
if command -v python3 >/dev/null 2>&1; then
  python3 -m http.server "$PORT"
else
  python -m http.server "$PORT"
fi
