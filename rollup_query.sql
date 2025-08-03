-- Create a rollup query using the columns year, city, and stationid 
-- to get hierarchical totals of waste collected.

SELECT
    dd.year,
    ds.city,
    ds.stationid,
    SUM(wastecollected) AS total_waste_collected

FROM facttrips AS ft
JOIN dimdate AS dd ON ft.dateid = dd.dateid
JOIN dimstation AS ds ON ft.stationid = ds.stationid

GROUP BY ROLLUP (dd.year, ds.city, ds.stationid);
