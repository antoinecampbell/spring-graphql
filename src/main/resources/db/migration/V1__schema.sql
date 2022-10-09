CREATE TABLE item
(
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(50)              NOT NULL,
    description     VARCHAR(255)
--     insertTimestamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
--     updateTimestamp TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);
