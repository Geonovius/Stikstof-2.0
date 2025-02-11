-- View: osm.vw_water

-- DROP VIEW osm.vw_water;

CREATE OR REPLACE VIEW osm.vw_water
 AS
 SELECT p.area_id,
    p.tags,
    p.geom,
    p.area
   FROM osm.polygons p
  WHERE p.tags @> '{"water": "lake"}'::jsonb;

ALTER TABLE osm.vw_water
    OWNER TO postgres;

