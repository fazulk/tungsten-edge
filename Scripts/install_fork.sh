#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

export TUNGSTEN_APP_NAME="Tungsten Edge Fork"
export TUNGSTEN_BUNDLE_ID="com.fazulk.tungstenedge.fork"
export TUNGSTEN_DERIVED_DATA="$ROOT/build/DerivedData"
export DEVELOPER_ID_APPLICATION="${DEVELOPER_ID_APPLICATION:-Developer ID Application: Jeff Fasulkey (RYGJM936NT)}"

"$ROOT/Scripts/install_local_release.sh"
/usr/bin/open "/Applications/$TUNGSTEN_APP_NAME.app"
