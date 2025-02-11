-- View: osm.vw_pipelines

-- DROP VIEW osm.vw_pipelines;

CREATE OR REPLACE VIEW osm.vw_pipelines
 AS
 SELECT lines.way_id,
    lines.tags,
    lines.geom
   FROM osm.lines
  WHERE lines.tags @> '{"man_made": "pipeline"}'::jsonb;

ALTER TABLE osm.vw_pipelines
    OWNER TO postgres;

