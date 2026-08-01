WITH RankedData As( -- ranked data is the new temprry table viw 
SELECT *,
  row_number() over(
    partition by Make_and_Model,Vehicle_Type  -- for cereating the partition
    order by rand()  -- ordering randomily 
  )row_num --refed as row number like method in a normal programin 
 FROM `fleetmaintenance-862000.Fleet.fleet`
)
select * from RankedData where row_num<=1000; --select all the data from the ranked data and callled the method