CREATE TABLE hotels (
         hotel_id INT PRIMARY KEY, 
         hotel_name VARCHAR(100), 
         star_rating INT
     );
     INSERT INTO hotels VALUES 
         (1, 'The Taj Mahal Palace', 5), 
         (2, 'The Oberoi', 4), 
         (3, 'Budget Inn', 2);


SELECT * FROM HOTELS

/*
Find all hotels with a rating of 4 stars or higher.
*/

SELECT HOTEL_NAME
FROM HOTELS
WHERE STAR_RATING >=4