#!/usr/bin/env bash
set -euo pipefail

repo_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
version=$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["version"])' "$repo_dir/src/info.json")
mod_name=$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["name"])' "$repo_dir/src/info.json")
archive_root="${mod_name}_${version}"
staging_dir=$(mktemp -d)
trap 'rm -rf "$staging_dir"' EXIT

mkdir -p "$repo_dir/dist" "$staging_dir/$archive_root"
cp -a "$repo_dir/src/." "$staging_dir/$archive_root/"
cp "$repo_dir/LICENSE" "$repo_dir/CONTRIBUTORS.md" "$repo_dir/THIRD_PARTY_LICENSES.md" "$staging_dir/$archive_root/"

cd "$staging_dir"
zip -q -r -FS "$repo_dir/dist/${archive_root}.zip" "$archive_root"
unzip -t "$repo_dir/dist/${archive_root}.zip" >/dev/null
printf '%s\n' "$repo_dir/dist/${archive_root}.zip"
