DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS transactions CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  password_digest VARCHAR NOT NULL,
  created_at DATE DEFAULT NOW() NOT NULL,
  budget INTEGER NOT NULL
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  created_at DATE DEFAULT NOW() NOT NULL,
  category_budget INTEGER NOT NULL,
  UNIQUE(name, user_id)
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY NOT NULL,
  store_name VARCHAR NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  category_id INTEGER REFERENCES categories(id) ON DELETE CASCADE,
  amount INTEGER NOT NULL,
  entered_on DATE NOT NULL,
  description TEXT
);