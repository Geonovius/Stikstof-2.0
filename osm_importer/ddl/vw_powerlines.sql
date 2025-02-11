-- View: osm.vw_powerlines

-- DROP VIEW osm.vw_powerlines;

CREATE OR REPLACE VIEW osm.vw_powerlines
 AS
 SELECT lines.way_id,
    lines.tags,
    lines.geom
   FROM osm.lines
  WHERE lines.tags @> '{"power": "line"}'::jsonb OR lines.tags @> '{"power": "minor_line"}'::jsonb OR lines.tags @> '{"power": "cable"}'::jsonb;

ALTER TABLE osm.vw_powerlines
    OWNER TO postgres;

