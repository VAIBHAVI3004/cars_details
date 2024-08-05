create database cars;
use cars;
#drop database car_dekho;

#1.read data
select * from car_details;

#2.total
select count(*) from car_details;

#cars available in 2023
select count(*) from car_details
where year = 2023;

# cars available in 2020,2021,2022
select count(*) from car_details
where year between 2020 and 2022;

select year,count(*) as total_cars from car_details 
where year in (2020,2021,2022) group by year;
# total of all cars by year

select year,count(*) as total_cars from car_details
group by year;

#how many diesel cars in 2023 
select year, fuel ,count(*) as total_cars from car_details
where  year = 2020 and fuel = 'Diesel';

#petrol car in 2020
select year, fuel,count(*) as total_cars from car_details
where year = 2020 and fuel = "Petrol";

# PRINT OF ALL THE FUEL CARS EVERY YEAR
select year,fuel,count(*) as tot_cars from car_details 
where fuel in ('petrol' ,'diesel','cng')
 group by fuel, year;
 
 #which year had more thsn 100 cars
 select year ,count(*) as tot_cars from car_details
 group by year
 having count(*)> 100; 
 
 #complete count of all cars btw 2015 to 2023
 select year,count(*) from car_details
 where year between 2015 and 2023
 group by year;
 
  select count(*) from car_details
 where year between 2015 and 2023;
 
 #all car details btw 2015 to 2023
 select * from car_details
 where year between 2015 and 2023;
 
--END--
 
 
