#!/bin/bash

set -e

terraform init

for ws in dev staging prod
do
  terraform workspace select $ws 2>/dev/null || terraform workspace new $ws
done

echo "Workspaces disponibles:"
terraform workspace list