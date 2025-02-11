-- View: osm.vw_wetland

-- DROP VIEW osm.vw_wetland;

CREATE OR REPLACE VIEW osm.vw_wetland
 AS
 SELECT p.area_id,
    p.tags,
    p.geom,
    p.area
   FROM osm.polygons p
  WHERE p.tags @> '{"natural": "wetland"}'::jsonb; 

ALTER TABLE osm.vw_wetland
    OWNER TO postgres;

