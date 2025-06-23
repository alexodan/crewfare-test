#!/bin/bash

echo "🚀 Setting up Crewfare Test App with Docker..."

if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

echo "📁 Creating necessary directories..."
mkdir -p scripts logs

chmod +x scripts/docker-setup.sh

echo "🏗️ Building and starting containers..."
docker-compose up --build -d

echo "⏳ Waiting for services to start..."
sleep 30

echo "🔍 Checking service status..."
docker-compose ps

echo ""
echo "✅ Setup complete! Your services are running:"
echo "🌐 Application: http://localhost:3000"
echo "🗄️ Database: localhost:5432"
echo "🔧 pgAdmin: http://localhost:5050 (admin@example.com / admin123)"
echo ""
echo "📋 Useful commands:"
echo "  - View logs: docker-compose logs -f"
echo "  - Stop services: docker-compose down"
echo "  - Restart services: docker-compose restart"
echo "  - Access database: docker-compose exec postgres psql -U postgres -d rooming_list_db"
echo ""
echo "🎉 Happy coding!"
