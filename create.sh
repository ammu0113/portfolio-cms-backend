#!/bin/bash

# Create base directories for gateway
mkdir -p gateway/src/{config,controllers,middlewares,models,routes,utils}
touch gateway/src/app.js
touch gateway/src/server.js
touch gateway/.env.example
touch gateway/package.json
touch gateway/README.md

# Create microservices directories
for service in auth user portfolio media analytics; do
    mkdir -p services/${service}-service/src/{config,controllers,middlewares,models,routes,utils}
    touch services/${service}-service/src/app.js
    touch services/${service}-service/src/server.js
    touch services/${service}-service/.env.example
    touch services/${service}-service/package.json
    touch services/${service}-service/README.md
done

# Create shared resources
mkdir -p shared/{core,middleware,models,config,tests,types}
touch shared/index.js
touch shared/package.json

# Create deployment resources
mkdir -p deploy/{docker,aws,nginx}
touch deploy/docker/docker-compose.yml
touch deploy/docker/Dockerfile
touch deploy/aws/ec2-setup.sh
touch deploy/nginx/nginx.conf

# Create documentation
mkdir -p docs/{api,architecture,deployment}
touch docs/README.md

# Create root level configuration files
touch .gitignore
touch .env.example
touch docker-compose.yml
touch README.md

# Create base project package.json
echo '{
  "name": "portfolio-cms-backend",
  "version": "1.0.0",
  "description": "Portfolio CMS Backend - Microservices Architecture",
  "scripts": {
    "gateway": "cd gateway && npm run dev",
    "auth": "cd services/auth-service && npm run dev",
    "user": "cd services/user-service && npm run dev",
    "portfolio": "cd services/portfolio-service && npm run dev",
    "media": "cd services/media-service && npm run dev",
    "analytics": "cd services/analytics-service && npm run dev",
    "install:all": "npm install && cd gateway && npm install && cd ../services/auth-service && npm install && cd ../user-service && npm install && cd ../portfolio-service && npm install && cd ../media-service && npm install && cd ../analytics-service && npm install && cd ../../shared && npm install",
    "dev": "concurrently \"npm run gateway\" \"npm run auth\" \"npm run user\" \"npm run portfolio\" \"npm run media\" \"npm run analytics\"",
    "test": "jest"
  },
  "devDependencies": {
    "concurrently": "^8.0.1",
    "jest": "^29.5.0"
  }
}' > package.json

# Create base .gitignore
echo 'node_modules/
.env
*.log
.DS_Store
coverage/
dist/
build/
.idea/
.vscode/
*.lock
.npm/
logs/
tmp/' > .gitignore

# Create base .env.example
echo '# Gateway Configuration
GATEWAY_PORT=3000

# Service Ports
AUTH_SERVICE_PORT=3001
USER_SERVICE_PORT=3002
PORTFOLIO_SERVICE_PORT=3003
MEDIA_SERVICE_PORT=3004
ANALYTICS_SERVICE_PORT=3005

# MongoDB Configuration
MONGODB_URI=mongodb://localhost:27017/portfolio-cms

# Redis Configuration
REDIS_HOST=localhost
REDIS_PORT=6379
REDIS_PASSWORD=

# JWT Configuration
JWT_SECRET=your-jwt-secret
JWT_EXPIRES_IN=24h

# AWS Configuration (Free Tier)
AWS_REGION=us-east-1
AWS_ACCESS_KEY_ID=your-access-key
AWS_SECRET_ACCESS_KEY=your-secret-key
AWS_S3_BUCKET=your-bucket-name

# Logging
LOG_LEVEL=debug' > .env.example

# Make the services executable
chmod +x deploy/aws/ec2-setup.sh

echo "Portfolio CMS Backend structure has been created successfully!"
echo "Next steps:"
echo "1. Run 'npm install' to install root dependencies"
echo "2. Run 'npm run install:all' to install dependencies for all services"
echo "3. Copy .env.example to .env and update the configuration"
echo "4. Run 'npm run dev' to start all services in development mode"