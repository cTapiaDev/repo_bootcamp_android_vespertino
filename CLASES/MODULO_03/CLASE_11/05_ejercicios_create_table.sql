/* Create a new table named Database with the following columns:
– Name A string (text) describing the name of the database
– Version A number (floating point) of the latest version of this database
– Download_count An integer count of the number of times this database was downloaded */

CREATE TABLE Database (
    Name VARCHAR(75),
    Version FLOAT,
    Download_count INTEGER
);