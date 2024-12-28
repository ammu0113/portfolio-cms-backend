#!/bin/bash

# Initialize git repository
git init

# Create a comprehensive .gitignore file
cat > .gitignore << EOL
# Dependencies
node_modules/
/.pnp
.pnp.js

# Environment files
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Build outputs
/dist
/build
/out

# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Test coverage
coverage/

# IDE specific files
.idea/
.vscode/
*.swp
*.swo
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# Temporary folders
tmp/
temp/
EOL

# Create initial README.md
cat > README.md << EOL
# Portfolio CMS Backend

A microservices-based backend system for Portfolio Content Management System.

## Architecture

This project follows a microservices architecture with the following components:

- API Gateway
- Authentication Service
- User Service
- Portfolio Service
- Media Service
- Analytics Service

## Prerequisites

- Node.js >= 14
- MongoDB
- Redis
- AWS Account (Free Tier)

## Getting Started

1. Clone the repository:
\`\`\`bash
git clone <repository-url>
cd portfolio-cms-backend
\`\`\`

2. Install dependencies:
\`\`\`bash
npm run install:all
\`\`\`

3. Configure environment variables:
\`\`\`bash
cp .env.example .env
# Edit .env with your configuration
\`\`\`

4. Start development servers:
\`\`\`bash
npm run dev
\`\`\`

## Services

- Gateway (Port: 3000)
- Auth Service (Port: 3001)
- User Service (Port: 3002)
- Portfolio Service (Port: 3003)
- Media Service (Port: 3004)
- Analytics Service (Port: 3005)

## Documentation

- API Documentation: \`/docs/api\`
- Architecture Details: \`/docs/architecture\`
- Deployment Guide: \`/docs/deployment\`

## Contributing

1. Create a feature branch
2. Commit your changes
3. Push to the branch
4. Create a Pull Request

## License

MIT
EOL

# Add all files
git add .

# Initial commit
git commit -m "Initial commit: Project structure setup"

# Instructions for setting up remote repository
echo "
Repository initialized successfully!

Next steps:
1. Create a new repository on GitHub/GitLab/BitBucket
2. Add remote origin:
   git remote add origin <repository-url>
3. Push to remote:
   git push -u origin main

Current branch is now ready for development!"