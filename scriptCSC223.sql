DROP DATABASE IF EXISTS leopards;
CREATE DATABASE IF NOT EXISTS leopards;
USE leopards; 
DROP TABLE IF EXISTS java_market; 

    CREATE TABLE IF NOT EXISTS java_market(
    RunID INT (11) NOT NULL,
    CustomerID INT (11) NOT NULL,
    ServiceLane VARCHAR (11) NOT NULL,
    ArrivalTime INT (11) NOT NULL,
    WaitTime INT (11) NOT NULL,
    ServiceTime INT (11) NOT NULL,
    FinishTime INT(11) NOT NULL
    );
    
    
    CREATE TABLE IF NOT EXISTS full_service_data(
    RunID INT (11) NOT NULL,
    ServiceLane VARCHAR (11) NOT NULL,
    UnoccupiedTime INT (11) NOT NULL,
    AvgWaitTime DECIMAL (5,2) NOT NULL,
    SatisfiedCust INT (11) NOT NULL,
    UnsatisfiedCust INT (11) NOT NULL
    );
    
    
    CREATE TABLE IF NOT EXISTS self_service_data(
    RunID INT (11) NOT NULL,
    ServiceLane VARCHAR (11) NOT NULL,
    UnoccupiedTime INT (11) NOT NULL,
    AvgWaitTime DECIMAL (5,2) NOT NULL,
    SatisfiedCust INT (11) NOT NULL,
    UnsatisfiedCust INT (11) NOT NULL
    );
    
    DROP PROCEDURE IF EXISTS pick_CustID;
    CREATE PROCEDURE IF NOT EXISTS pick_CustID(id INTEGER) SELECT *
    FROM java_market
    WHERE CustomerID = id;
    
    DROP PROCEDURE IF EXISTS ppl_AndAvgPerLane;
    DELIMITER //
    CREATE PROCEDURE ppl_AndAvgPerLane()
    BEGIN
    SELECT RunID, ServiceLane AS Lane, COUNT(CustomerID) AS TotalPeople,
    ROUND(AVG(WaitTime), 2) AS AvgWaitTime
    FROM java_market
    GROUP BY RunID, ServiceLane;
    END //
    DELIMITER ;
    
    
    DROP PROCEDURE IF EXISTS lane_Stats;
    CREATE PROCEDURE IF NOT EXISTS lane_Stats(lane VARCHAR(255))
    SELECT RunID, ServiceLane AS Lane, COUNT(CustomerID) AS TotalPeople,
    ROUND(AVG(WaitTime), 2) AS AvgWaitTime,
    ROUND(AVG(ServiceTime), 2) AS AvgServiceTime,
    ROUND(AVG(FinishTime)/COUNT(CustomerID), 2) AS AvgFinishTime
    FROM java_market
    WHERE ServiceLane = lane
    GROUP BY RunID;
    
    
    

