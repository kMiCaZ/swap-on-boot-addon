#!/bin/bash

SWAPFILE="/data/swapfile"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

log "==> Désactivation du swap au stop..."
swapoff "$SWAPFILE" 2>/dev/null || log "Impossible de désactiver le swap."

exit 0
