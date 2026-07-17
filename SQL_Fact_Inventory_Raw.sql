create database Philips
use Philips;

-- Show the all data
select * from Fact_Inventory_Raw

-- Filter out invalid records, calculate raw delays, and handle any NULL values.
select
      SKU_ID,
      Segment,
      Region,
      Coalesce(Unit_Cost_EUR,0)Unit_Cost_EUR,
      coalesce(Average_Daily_Demand,0)Average_Daily_Demand,
      coalesce(Demand_Std_Dev,0)Demand_Std_Dev,
      Expected_Lead_Time_Days,
      Actual_Lead_Time_Days,

-- Calculate the exact supply chain delay day variance
    (Actual_Lead_TIme_Days-Expected_Lead_Time_Days)Lead_Time_Variance_Days,
    coalesce(On_Hand_Inventory,0)On_Hand_Inventory
from Fact_Inventory_Raw
where SKU_ID is not null
    and Unit_Cost_EUR > 0
    and Average_Daily_Demand >=0;

