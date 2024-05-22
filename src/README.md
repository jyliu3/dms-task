# Dealership Management System (DMS)

This project is a backend system for managing operations for automotive dealerships. It includes a PostgreSQL database schema and a GraphQL API built with TypeScript.

## Prerequisites

- Node.js
- PostgreSQL
- Docker (for running the PostgreSQL and GraphQL server containers)

## Setup

1. Clone the repository:

2. Navigate to the project directory:

3. Build and run the Docker containers:

4. Access the GraphQL API at `http://localhost:5432/graphql`.

## Database Schema

The PostgreSQL database schema consists of the following tables:

- `dealerships` (id, name, address, parent_dealership_id)
- `vehicles` (id, make, model, year, dealership_id)
- `customers` (id, first_name, last_name)
- `sales` (id, vehicle_id, customer_id, dealership_id, sale_date)

## API Documentation

[Link to API documentation]

## Contributing

Contributions are welcome! Please follow the guidelines in the [CONTRIBUTING.md](CONTRIBUTING.md) file.
