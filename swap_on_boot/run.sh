#!/bin/bash

SWAPFILE="/data/swapfile"

# Désactivation du swap existant, s'il y en a un
if swapon --show | grep -q "$SWAPFILE"; then
  echo "==> Désactivation du swap existant..."
  swapoff $SWAPFILE
fi

# Création du fichier swap si non existant
if [ ! -f "$SWAPFILE" ]; then
  echo "==> Création du fichier swap..."
  dd if=/dev/zero of=$SWAPFILE bs=1M count=2048
  chmod 600 $SWAPFILE
  mkswap $SWAPFILE
else
  echo "==> Fichier swap déjà présent."
fi

# Activation du swap
swapon $SWAPFILE

echo "==> Swap activé :"
free -h

# L'addon tourne en continu pour ne pas être tué immédiatement
tail -f /dev/null
