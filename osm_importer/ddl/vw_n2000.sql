-- osm.vw_n2000 source

CREATE OR REPLACE VIEW osm.vw_n2000
AS SELECT boundaries.relation_id,
    boundaries.tags,
    boundaries.geom
   FROM osm.boundaries
  WHERE boundaries.tags @> '{"protect_class": "97"}'::jsonb OR boundaries.tags @> '{"boundary": "national_park"}'::jsonb;