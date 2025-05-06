#!/bin/bash

SWAPFILE="/data/swapfile"

echo "==> Désactivation du swap au stop..."
swapoff "$SWAPFILE" 2>/dev/null || echo "Impossible de désactiver le swap."

exit 0
