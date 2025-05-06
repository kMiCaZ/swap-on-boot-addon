#!/bin/bash

SWAPFILE="/data/swapfile"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

log "==> Désactivation du swap existant..."
swapoff "$SWAPFILE" 2>/dev/null

if [ ! -f "$SWAPFILE" ]; then
  log "==> Création du fichier swap..."
  dd if=/dev/zero of=$SWAPFILE bs=1M count=2048
  chmod 600 "$SWAPFILE"
  mkswap "$SWAPFILE"
else
  log "==> Fichier swap déjà présent."
fi

swapon "$SWAPFILE"

log "==> Swap activé :"
swapon --show

tail -f /dev/null
