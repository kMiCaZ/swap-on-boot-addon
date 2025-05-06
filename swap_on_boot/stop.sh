#!/bin/bash

SWAPFILE="/data/swapfile"

echo "==> Désactivation du swap..."
swapoff $SWAPFILE || echo "Swap déjà désactivé ou erreur."
