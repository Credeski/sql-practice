CREATE TABLE companies (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    industry TEXT
);



CREATE TABLE jobs(
    id SERIAL PRIMARY KEY,
    company_id INT REFERENCES companies(id),
    title TEXT NOT NULL,
    location TEXT,
    salary INT,
    status TEXT DEFAULT 'open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

 

