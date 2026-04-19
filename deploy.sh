#!/bin/bash
set -e

REPO_DIR=/opt/gehrer-ai

echo "=== gehrer-ai Landing Page Update ==="

echo "[1/3] Pulling latest changes..."
git -C $REPO_DIR pull --rebase

echo "[2/3] Building Docker image..."
cd $REPO_DIR
docker compose build

echo "[3/3] Restarting container..."
docker compose up -d

echo ""
echo "Update complete! Landing: https://gehrer-ai.com"
