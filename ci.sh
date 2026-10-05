#!/usr/bin/env bash
set -eu

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

if [ -f ".venv/bin/python" ]; then
  . .venv/bin/activate
else
  . .venv/Scripts/activate
fi

python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pytest -q
