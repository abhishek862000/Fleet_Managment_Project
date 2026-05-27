-- select Make_and_Model,
--         avg(Maintence_KM) as avg_maintence_km,
--         avg(Maintenance_Cost)  as avg_maintence_km,
--         avg(AVG_Fuel_Consumption) as AVG_Fuel_Consumption,
--         max(Avg_Delivery_Times)as max_delivery_time,
--         min(Avg_Delivery_Times)as min_delivery_time,
--  from `fleetmaintenance-862000.Fleet.fleet` 
-- group by Make_and_Model

select

Make_and_Model,
sum(Maintenance_Cost) as total_cost,
count(Maintence_id)as total_Events,
round(SUM(Maintenance_Cost) / COUNT(Maintence_id),2 )AS avg_cost_per_event,
 ROUND(AVG(CAST(Maintence_KM AS FLOAT64)), 0) as avg_km_by_vehicle,
ROUND(AVG(2025-Year_of_Manufacture),1)AS avg_Vehicle_age,
round(countif(Maintenance_Level='Major')*100.0/count(*),1) as Major_repair_percent,
round(countif(Maintenance_Level='Normal')*100.0/count(*),1) as Normal_repair_percent,
round(countif(Maintenance_Level='Minor')*100.0/count(*),1) as Minor_repair_percent,
 from  `fleetmaintenance-862000.Fleet.fleet` 
group by Make_and_Model