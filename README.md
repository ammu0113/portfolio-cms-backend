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
```bash
git clone <repository-url>
cd portfolio-cms-backend
```

2. Install dependencies:
```bash
npm run install:all
```

3. Configure environment variables:
```bash
cp .env.example .env
# Edit .env with your configuration
```

4. Start development servers:
```bash
npm run dev
```

## Services

- Gateway (Port: 3000)
- Auth Service (Port: 3001)
- User Service (Port: 3002)
- Portfolio Service (Port: 3003)
- Media Service (Port: 3004)
- Analytics Service (Port: 3005)

## Documentation

- API Documentation: `/docs/api`
- Architecture Details: `/docs/architecture`
- Deployment Guide: `/docs/deployment`

## Contributing

1. Create a feature branch
2. Commit your changes
3. Push to the branch
4. Create a Pull Request

## License

MIT
