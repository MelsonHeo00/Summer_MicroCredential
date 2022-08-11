-- CREATE TABLE videos (
--  unique_ID varchar(255),
--  title varchar(255),
--  length varchar(255),
--  URL varchar(255)
-- );
-- Note: I commented this out once the tables were created

-- CREATE TABLE reviewers (
-- name varchar(255),
-- rating varchar(255),
-- review varchar(255),
-- unique_ID varchar(255)
-- );
-- Note: I commented this out once the tables were created

-- Adding some values to the table for videos
-- INSERT INTO videos (unique_ID, title, length, URL)
-- VALUES ('KRaWnd3LJfs', 'Payphone', '4:33', 'https://www.youtube.com/watch?v=KRaWnd3LJfs'),
-- ('SlPhMPnQ58k', 'Memories', '3:15', 'https://www.youtube.com/watch?v=SlPhMPnQ58k'),
-- ('09R8_2nJtjg', 'Sugar', '5:01', 'https://www.youtube.com/watch?v=09R8_2nJtjg');
-- Note: I commented this out once the values were created

-- Adding some values to the table for reviewers
-- INSERT INTO reviewers (name, rating, review, unique_ID)
-- VALUES('Billy', '4.5', 'I enjoy the music', 'KRaWnd3LJfs'),
-- ('Jones', '3.5', 'I like the music but it does not fit to what I listen to', 'KRaWnd3LJfs'),
-- ('Jack', '5', 'I love this music', 'SlPhMPnQ58k'),
-- ('Ray', '2.9', 'The music is alright', 'SlPhMPnQ58k');
-- Note: I commented this out once the values were created

SELECT * from reviewers;
SELECT * FROM videos AS v LEFT JOIN reviewers as r ON r.unique_ID = v.unique_ID;
-- Combines the two tables