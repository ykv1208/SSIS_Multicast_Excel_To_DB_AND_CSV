USE SSIS;

DROP TABLE task3_maintable;
TRUNCATE TABLE task3_maintable;

IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'task3_maintable'
      AND schema_id = SCHEMA_ID('dbo')
)
BEGIN
    CREATE TABLE dbo.task3_maintable
    (
        id INT,
        name VARCHAR(46) NOT NULL,
        email VARCHAR(46) NOT NULL,
        gender VARCHAR(1) NOT NULL,
        salary INT,
        Joining_date DATE
    );
END;


SELECT *
FROM task3_maintable;

