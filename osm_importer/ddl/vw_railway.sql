-- View: osm.vw_railway

-- DROP VIEW osm.vw_railway;

CREATE OR REPLACE VIEW osm.vw_railway
 AS
 SELECT lines.way_id,
    lines.tags,
    lines.geom
   FROM osm.lines
  WHERE lines.tags @> '{"railway": "rail"}'::jsonb;

ALTER TABLE osm.vw_railway
    OWNER TO postgres;

