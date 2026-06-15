-- SELECT * FROM `fleetmaintenance-862000.Fleet.fleet` LIMIT 1000

select 


extract(YEAR FROM (Last_Maintenance_Date))as YEAR,--FOR EXTRACTING YEAR FROM DATE
extract(MONTH FROM (Last_Maintenance_Date))as MONTH, --FOR EXTRACTING MONTH FROM DATE
FORMAT_DATE('%b %y',(Last_Maintenance_Date))as MONTH_LABEL, --WILL GET LABEL RESULT AS Jan 23
FORMAT_DATE('%B %Y',(Last_Maintenance_Date))as MONTH_LABEL_CAP,--WILL GET LABEL RESULT AS January 2023
Make_and_Model,
  Vehicle_Type,
  Main_Route,
  Weather_Conditions,
  Maintenance_Type,
  Maintenance_Level, 
  COUNT(*)  as total_events,--for finding total events 
  SUM(Maintenance_Cost) as total_cost ,--for finding total cost
  ROUND(AVG(Maintenance_Cost), 0) as avg_cost,-- for finding AVG cost
  COUNTIF(Maintenance_Level = 'Major') as major_repairs,
  COUNTIF(Maintenance_Level = 'Minor') as minor_repairs,
  COUNTIF(Maintenance_Level = 'Normal') as normal_repairs,
  ROUND(AVG(CAST(Avg_Delivery_Times AS FLOAT64)), 1) as avg_delay
FROM `fleetmaintenance-862000.Fleet.fleet`
GROUP BY YEAR,MONTH,month,MONTH_LABEL,MONTH_LABEL_CAP, Make_and_Model,
  Vehicle_Type,
  Main_Route,
  Weather_Conditions,
  Maintenance_Type,
  Maintenance_Level
-- ORDER BY YEAR,MONTH 
