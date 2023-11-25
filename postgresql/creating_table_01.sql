CREATE TABLE eurovision (
    euro_id SERIAL PRIMARY KEY,
    event_year INT,
    country VARCHAR(255),
    gender VARCHAR(10),
    group_type VARCHAR(50),
    place INT,
    points INT,
    host_country VARCHAR(255),
    host_region VARCHAR(255),
    is_final INT,
    sf_number INT,
    song_in_english BOOLEAN
);

select * from eurovision;

copy eurovision from /Users/sahabuddinrhaju/Documents/Tutorials/datacamp_sql/Introduction_To_SQL_Server/eurovis.csv