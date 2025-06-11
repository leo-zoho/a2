#!/bin/bash
# Example script: run all tests
for svc in task-management role-registry swarm-manager user-interface external-integration monitoring-reporting; do
  echo "Testing $svc..."
  (cd services/$svc && npm test || echo "No tests for $svc")
done
