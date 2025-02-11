-- View: osm.vw_roads

-- DROP VIEW osm.vw_roads;

CREATE OR REPLACE VIEW osm.vw_roads
 AS
 SELECT lines.way_id,
    lines.tags,
    lines.geom
   FROM osm.lines
  WHERE lines.tags @> '{"highway": "motorway"}'::jsonb OR lines.tags @> '{"highway": "primary"}'::jsonb OR lines.tags @> '{"highway": "trunk"}'::jsonb;;

ALTER TABLE osm.vw_roads
    OWNER TO postgres;

