#!/bin/bash
set -e

VM_USER="dugganj"
VM_HOST="10.10.100.176"
VM_PATH="/var/www/silverback"

echo "Building..."
npm run build

echo "Deploying to VM..."
rsync -av --delete dist/ ${VM_USER}@${VM_HOST}:${VM_PATH}/

echo "Done. Visit http://${VM_HOST}"
