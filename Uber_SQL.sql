-- Uber Supply Demand Gap - SQL Insights (Medium Professional Tone)

-- 1. Total requests
SELECT COUNT(*) AS total_requests FROM uber;

-- Insight: Shows dataset volume and total demand.

-- 2. Status distribution (Completed, Cancelled, No Cars Available)
SELECT Status, COUNT(*) AS count
FROM uber
GROUP BY Status;

-- Insight: Helps quantify failure vs successful trips.

-- 3. Pickup point distribution (City vs Airport)
SELECT Pickup_Point, COUNT(*) AS count
FROM uber
GROUP BY Pickup_Point;

-- Insight: Identifies major demand source.

-- 4. Failure analysis by status
SELECT Status, COUNT(*) AS failures
FROM uber
WHERE Status <> 'Trip Completed'
GROUP BY Status;

-- Insight: Understanding operational breakdown of failures.

-- 5. Pickup point vs status
SELECT Pickup_Point, Status, COUNT(*) AS count
FROM uber
GROUP BY Pickup_Point, Status
ORDER BY Pickup_Point, Status;

-- Insight: Airport failures mostly due to No Cars whereas City failures due to cancellations.

-- 6. Hourly demand analysis
SELECT Request_Hour, COUNT(*) AS count
FROM uber
GROUP BY Request_Hour
ORDER BY Request_Hour;

-- Insight: Identifies peak-hour demand windows.

-- 7. Failures by time slot
SELECT Time_Slot, Status, COUNT(*) AS failures
FROM uber
GROUP BY Time_Slot, Status
ORDER BY Time_Slot;

-- Insight: Night shortage (No Cars), Morning cancellations.

-- 8. Supply-demand gap detection
SELECT Time_Slot,
SUM(CASE WHEN Status='Trip Completed' THEN 1 ELSE 0 END) AS completed,
SUM(CASE WHEN Status<>'Trip Completed' THEN 1 ELSE 0 END) AS failed
FROM uber
GROUP BY Time_Slot;

-- Insight: Helps quantify gap in each demand slot.
