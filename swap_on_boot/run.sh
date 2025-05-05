#!/bin/bash

SWAPFILE="/data/swapfile"

if [ ! -f "$SWAPFILE" ]; then
  echo "==> Création du fichier swap..."
  dd if=/dev/zero of=$SWAPFILE bs=1M count=2048
  chmod 600 $SWAPFILE
  mkswap $SWAPFILE
else
  echo "==> Fichier swap déjà présent."
fi

swapon $SWAPFILE

echo "==> Swap activé :"
free -h

tail -f /dev/null
