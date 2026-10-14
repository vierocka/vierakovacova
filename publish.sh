#!/usr/bin/env bash
# Publish README + figure to github.com/vierocka/vierakovacova, then the wiki pages.
# Before running: Settings -> Features -> tick "Wikis"; open the Wiki tab,
# click "Create the first page", save it once (this creates the wiki repository).
# Run from this unzipped folder.
set -euo pipefail
REPO=vierocka/vierakovacova
HERE=$(pwd)

# 1. README and figure -> main branch (the wiki's image URL expects branch "main")
git clone "https://github.com/${REPO}.git" main_repo
cp README.md main_repo/
mkdir -p main_repo/assets && cp assets/mapping_divergence_benchmark.jpg main_repo/assets/
cd main_repo
git add -A
git commit -m "Add profile README and benchmark figure"
git branch -M main
git push -u origin main
cd "$HERE"

# 2. Wiki pages (Home, sidebar, footer and project pages)
git clone "https://github.com/${REPO}.wiki.git" wiki_repo
cp wiki/*.md wiki_repo/
cd wiki_repo
git add -A
git commit -m "Add project wiki pages"
git push
