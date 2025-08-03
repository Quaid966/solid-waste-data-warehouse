-- Create a materialized view to store the maximum waste collected
-- grouped by city, station, and truck type.

CREATE MATERIALIZED VIEW max_waste_stats AS
SELECT
    ds.city,
    ds.stationid,
    dt.trucktype,
    MAX(ft.wastecollected) AS max_waste_collected
FROM facttrips ft
JOIN dimstation ds ON ft.stationid = ds.stationid
JOIN dimtruck dt ON ft.truckid = dt.truckid
GROUP BY
    ds.city,
    ds.stationid,
    dt.trucktype;
