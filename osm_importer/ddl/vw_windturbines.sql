-- View: osm.vw_windturbines

-- DROP VIEW osm.vw_windturbines;

CREATE OR REPLACE VIEW osm.vw_windturbines
 AS
 SELECT points.node_id,
    points.tags,
    points.geom
   FROM osm.points
  WHERE points.tags @> '{"power": "generator"}'::jsonb AND points.tags @> '{"generator:source": "wind"}'::jsonb;

ALTER TABLE osm.vw_windturbines
    OWNER TO postgres;

