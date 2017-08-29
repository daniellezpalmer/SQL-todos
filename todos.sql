CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at) VALUES ('School', 'Finish daily project: Self-Managed Robots', '5', current_timestamp), ('School', 'Finish this weekly project: Code Snippet Organizer', '4', current_timestamp), ('School', 'Finish this daily project: Use a PostgreSQL database', '3', current_timestamp), ('School', 'Finish this daily project: Write more complex SQL Statements', '2', current_timestamp), ('School', 'Review SQL lessons', '1', current_timestamp);

SELECT title, details FROM todos WHERE completed_at IS NULL;

SELECT title, details FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = current_timestamp WHERE id = 1;

DELETE FROM todos WHERE completed_at is NOT NULL;
