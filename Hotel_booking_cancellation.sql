SELECT 
    *
FROM
    hotel;
    
-- 1 Total Number of Bookings
SELECT 
    COUNT(*) AS total_bookings
FROM
    hotel;
    
-- 2 Total Canceled vs Not Canceled Bookings
SELECT 
    is_canceled, COUNT(*) AS total
FROM
    hotel
GROUP BY is_canceled;

-- 3 Cancellation Rate (%)
SELECT 
    ROUND((SUM(CASE
                WHEN is_canceled = 1 THEN 1
                ELSE 0
            END) * 100.0) / COUNT(*),
            2) AS cancellation_percentage
FROM
    hotel;

-- 4 Bookings by Hotel Type
SELECT 
    ï»¿hotel AS h, COUNT(*) AS total_bookings
FROM
    hotel
GROUP BY ï»¿hotel;

-- 5 Cancellations by Hotel Type
SELECT 
    ï»¿hotel, COUNT(*) AS canceled_bookings
FROM
    hotel
WHERE
    is_canceled = 1
GROUP BY ï»¿hotel;

-- 6 Year-wise Booking trends
SELECT 
    arrival_date_year, COUNT(*) AS total_bookings
FROM
    hotel
GROUP BY arrival_date_year
ORDER BY arrival_date_year;

-- 7 Month-wise Booking Analysis
SELECT 
    arrival_date_month, COUNT(*) AS total_bookings
FROM
    hotel
GROUP BY arrival_date_month
ORDER BY total_bookings DESC;

-- 8 Country-wise Bookings
SELECT 
    country, COUNT(*) AS total_bookings
FROM
    hotel
GROUP BY country
ORDER BY total_bookings DESC;

-- 9 Top 5 Countries with Highest Cancellations
SELECT 
    country, COUNT(*) AS canceled_bookings
FROM
    hotel
WHERE
    is_canceled = 1
GROUP BY country
ORDER BY canceled_bookings DESC
LIMIT 5;

-- 10 Guest Type vs Booking Count
SELECT 
    guest_type, COUNT(*) AS total_bookings
FROM
    hotel
GROUP BY guest_type;

-- 11 Guest Type vs Cancellation Count
SELECT 
    guest_type, COUNT(*) AS canceled_bookings
FROM
    hotel
WHERE
    is_canceled = 1
GROUP BY guest_type;

-- 12 Room Type Mismatch Analysis
-- (Reserved room ≠ Assigned room)
SELECT 
    COUNT(*) AS room_mismatch_count
FROM
    hotel
WHERE
    reserved_room_type <> assigned_room_type;

-- 13 Impact of Room Mismatch on Cancellation
SELECT 
    CASE
        WHEN reserved_room_type <> assigned_room_type THEN 'Mismatch'
        ELSE 'Matched'
    END AS room_status,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS canceled_bookings
FROM
    hotel
GROUP BY CASE
    WHEN reserved_room_type <> assigned_room_type THEN 'Mismatch'
    ELSE 'Matched'
END;
    
-- 14 Adult, Children, Babies Count (Average)
SELECT 
    ROUND(AVG(adults), 2) AS avg_adults,
    ROUND(AVG(children), 2) AS avg_children,
    ROUND(AVG(babies), 2) AS avg_babies
FROM
    hotel;

-- 15 Reservation Status Summary
SELECT 
    reservation_status, COUNT(*) AS total
FROM
    hotel
GROUP BY reservation_status;

-- 16 Desired vs Un-Desired Room Status
SELECT 
    room_status, COUNT(*) AS total_bookings
FROM
    hotel
GROUP BY room_status;

-- 17 Cancellations by Room Status
SELECT 
    room_status, COUNT(*) AS canceled_bookings
FROM
    hotel
WHERE
    is_canceled = 1
GROUP BY room_status;

-- 18 Monthly Cancellation Trend
SELECT 
    arrival_date_month, COUNT(*) AS canceled_bookings
FROM
    hotel
WHERE
    is_canceled = 1
GROUP BY arrival_date_month
ORDER BY canceled_bookings DESC;