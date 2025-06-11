#!/bin/bash
# Example script: build all services
for svc in task-management role-registry swarm-manager user-interface external-integration monitoring-reporting; do
  echo "Building $svc..."
  (cd services/$svc && npm install)
done
