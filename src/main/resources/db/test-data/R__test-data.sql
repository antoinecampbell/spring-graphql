-- ${flyway:timestamp}
DELETE FROM item
WHERE id IN (1, 2, 3);

INSERT INTO item (id, name, description)
VALUES (1, 'item 1', 'first item'),
       (2, 'item 2', 'second item'),
       (3, 'item 3', 'third item');

ALTER TABLE item ALTER COLUMN id RESTART WITH (SELECT (MAX(id) + 1) from item);