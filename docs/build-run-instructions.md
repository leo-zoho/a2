# Build and Run Instructions for A2 Microservices

## Prerequisites
- Docker installed
- Node.js (for local testing, optional)

## Build All Services

You can build each service Docker image from its directory. Example for `task-management`:

```bash
cd services/task-management
docker build -t a2-task-management .
```

Repeat for each service:
- `services/task-management` (port 3001)
- `services/role-registry` (port 3002)
- `services/swarm-manager` (port 3003)
- `services/user-interface` (port 3000)
- `services/external-integration` (port 3004)
- `services/monitoring-reporting` (port 3005)

## Run a Service

Example for `task-management`:

```bash
docker run -p 3001:3001 --env-file .env a2-task-management
```

Replace the port and image name for each service as needed.

## Environment Variables
- Create a `.env` file in each service directory for environment-specific configuration.

## Customization
- Update the `EXPOSE` port and add any extra build steps or dependencies in each service's `Dockerfile` as required.

## Troubleshooting
- Ensure all dependencies are listed in `package.json`.
- Use `docker logs <container_id>` to view service logs.

---

For more details, see the base Dockerfile template in `.github/templates/Dockerfile.template`.
