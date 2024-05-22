CREATE TABLE dealerships (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    parent_dealership_id INTEGER REFERENCES dealerships(id)
);

CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
    dealership_id INTEGER NOT NULL REFERENCES dealerships(id)
);

CREATE INDEX idx_vehicles_make_model_year ON vehicles (make, model, year);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE INDEX idx_customers_last_name ON customers (last_name);

CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    vehicle_id INTEGER NOT NULL REFERENCES vehicles(id),
    customer_id INTEGER NOT NULL REFERENCES customers(id),
    dealership_id INTEGER NOT NULL REFERENCES dealerships(id),
    sale_date DATE NOT NULL
);