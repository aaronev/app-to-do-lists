INSERT INTO
  users (name, password)
VALUES
  ('jason', 'jason'),
  ('aaron', 'aaron');

INSERT INTO
  todos (task, user_id)
VALUES
  ('create todolist', 1),
  ('make authentication', 2),
  ('create tests', 2);

INSERT INTO 
  todolists (name, user_id, todo_id)
VALUES
  ('jason1', 1, 1),
  ('aaron1', 2, 2),
  ('aaron1', 2, 3);
