# Rooming List Management App

A demo hotel booking and rooming list management application built with Next.js, PostgreSQL, and Docker.

## Features

- 📋 **Rooming List Management**
- 🔍 **Search & Filtering**
- 📄 **Pagination**
- 📱 **Responsive Design**
- 🐳 **Docker Support**
- 🗄️ **PostgreSQL Database**

## Quick Start with Docker

### Prerequisites

- Docker and Docker Compose installed on your system
- Git (to clone the repository)

### Recommended Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/alexodan/crewfare-test.git
   cd crewfare-test
   ```

2. **Run the setup script**
   ```bash
   chmod +x scripts/docker-setup.sh
   ./scripts/docker-setup.sh
   ```

3. **Access the application**
   - Application: http://localhost:3000
   - pgAdmin: http://localhost:5050 (admin@example.com / admin123)

### Manual Docker Setup

If you prefer to run commands manually:

```bash
docker-compose up --build -d

docker-compose logs -f

docker-compose down
```

## Development Setup (Without Docker)

### Prerequisites

- Node.js 18+ installed
- PostgreSQL database running

### Setup

1. **Install dependencies**
   ```bash
   npm install
   ```

2. **Set up environment variables**
   ```bash
   cp .env.example .env.local
   # Edit .env.local with your database connection details
   ```

3. **Set up the database**
   ```bash
   # Run the SQL scripts in the scripts/ directory
   psql -U your_user -d your_database -f scripts/01-create-tables.sql
   psql -U your_user -d your_database -f scripts/02-seed-data.sql
   ```

4. **Start the development server**
   ```bash
   npm run dev
   ```

## Project Structure

```
├── app/                    # Next.js App Router pages and API routes
├── components/             # Reusable React components
├── contexts/              # React Context providers
├── lib/                   # Utility functions and types
├── scripts/               # Database setup scripts
├── docker-compose.yml     # Docker services configuration
├── Dockerfile            # Application container configuration
└── README.md
```

## Database Schema

### Tables

- **events**: Store event information
- **rooming_lists**: Store rooming list details linked to events
- **bookings**: Store individual booking details linked to rooming lists

### Key Relationships

- Events → Rooming Lists (1:many)
- Rooming Lists → Bookings (1:many)

## API Endpoints

- `GET /api/rooming-lists` - Fetch all rooming lists
- `GET /api/bookings/[roomingListId]` - Fetch bookings for a specific rooming list

## Docker Services

### Application (app)
- **Port**: 3000
- **Description**: Next.js application server

### Database (postgres)
- **Port**: 5432
- **Description**: PostgreSQL database server
- **Credentials**: postgres/password123

### pgAdmin (pgadmin)
- **Port**: 5050
- **Description**: Database administration interface
- **Credentials**: admin@example.com/admin123

## Useful Docker Commands

```bash
# View service logs
docker-compose logs -f [service-name]

# Access database shell
docker-compose exec postgres psql -U postgres -d rooming_list_db

# Restart specific service
docker-compose restart [service-name]

# View running containers
docker-compose ps

# Stop all services
docker-compose down

# Remove all containers and volumes
docker-compose down -v
```

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DATABASE_URL` | PostgreSQL connection string | `postgresql://postgres:password123@postgres:5432/rooming_list_db` |
| `NEXT_PUBLIC_APP_URL` | Application URL | `http://localhost:3000` |
| `NODE_ENV` | Environment mode | `production` |

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with Docker setup
5. Submit a pull request

## License

This project is licensed under the MIT License.
