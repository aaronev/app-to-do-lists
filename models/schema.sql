DROP TABLE IF EXISTS todolists;
DROP TABLE IF EXISTS todos;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT,
  password TEXT
);

CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  task TEXT,
  completed BOOLEAN DEFAULT false,
  user_id INT REFERENCES users,
  timestamp TIMESTAMP
);

CREATE TABLE todolists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  user_id INT REFERENCES users,
  todo_id INT REFERENCES todos
);