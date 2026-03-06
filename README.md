# Hotel-Booking-Analysis
# Hotel Booking Cancellation Analysis (SQL Project)
📌 Project Overview

This project analyzes hotel booking data to understand booking patterns and identify factors that lead to booking cancellations.
The analysis was performed using MySQL by writing SQL queries to explore trends such as cancellation rate, booking trends, guest types, room allocation mismatches, and country-wise bookings.
The goal of this project is to practice SQL for real-world data analysis and extract meaningful insights from hotel booking data.

📊 Dataset Description

The dataset contains information about hotel bookings including:

    Hotel type
    Booking status (Canceled / Not Canceled)
    Arrival date (Year & Month)
    Guest details (Adults, Children, Babies)
    Country of origin
    Room type (Reserved vs Assigned)
    Reservation status

# Analysis Performed
1️⃣ Booking Overview

Total number of bookings
Canceled vs Non-canceled bookings
Overall cancellation rate

2️⃣ Hotel Type Analysis

Total bookings by hotel type
Cancellations by hotel type

3️⃣ Time-based Analysis

Year-wise booking trends
Month-wise booking trends
Monthly cancellation trends

4️⃣ Geographic Analysis
Country-wise bookings
Top 5 countries with highest cancellations

5️⃣ Guest Analysis

Booking distribution by guest type
Guest type vs cancellation analysis
Average number of adults, children, and babies per booking

6️⃣ Room Allocation Analysis

Reserved vs Assigned room mismatch
Impact of room mismatch on cancellations

7️⃣ Reservation Status Analysis

Distribution of reservation status
Room status vs cancellation analysis

# SQL Queries Used in the Analysis

The following SQL queries were written to analyze the Hotel Booking Cancellation dataset:

1. View the Dataset

Displays all records from the hotel booking dataset.

2. Total Number of Bookings

Calculates the total number of bookings in the dataset.

3. Total Canceled vs Non-Canceled Bookings

Groups bookings by cancellation status to see how many were canceled and how many were not.

4. Cancellation Rate

Calculates the percentage of bookings that were canceled.

5. Bookings by Hotel Type

Analyzes how many bookings were made for each hotel type.

6. Cancellations by Hotel Type

Identifies the number of cancellations for each hotel type.

7. Year-wise Booking Trends

Shows how booking volume changes across different years.

8. Month-wise Booking Analysis

Displays which months have the highest number of bookings.

9. Country-wise Bookings

Shows the number of bookings coming from each country.

10. Top 5 Countries with Highest Cancellations

Identifies the countries with the highest number of booking cancellations.

11. Guest Type vs Booking Count

Analyzes how bookings are distributed across different guest types.

12. Guest Type vs Cancellation Count

Examines which guest types cancel bookings the most.

13. Room Type Mismatch Analysis

Finds bookings where the reserved room type differs from the assigned room type.

14. Impact of Room Mismatch on Cancellations

Analyzes whether room mismatches lead to more cancellations.

15. Average Guest Count

Calculates the average number of adults, children, and babies per booking.

16. Reservation Status Summary

Shows the distribution of reservation statuses.

17. Room Status Analysis

Compares bookings with desired vs undesired room allocations.

18. Monthly Cancellation Trend

Analyzes which months have the highest number of cancellations.

# Key Insights

✔ A significant percentage of bookings are canceled, impacting hotel revenue.

✔ Booking trends vary across months and years, indicating seasonal demand.

✔ Certain countries have higher cancellation rates compared to others.

✔ Room type mismatches between reserved and assigned rooms may influence cancellations.

✔ Different guest types show different booking and cancellation behaviors.
