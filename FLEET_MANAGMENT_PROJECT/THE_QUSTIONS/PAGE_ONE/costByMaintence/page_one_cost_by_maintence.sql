-- SELECT  * FROM `fleetmaintenance-862000.Fleet.fleet` LIMIT 1000
select 
Maintenance_Type,
Maintenance_Level,
sum(Maintenance_Cost) as total_cost
FROM `fleetmaintenance-862000.Fleet.fleet`
group by Maintenance_Type, Maintenance_Level
order by total_cost DESC
