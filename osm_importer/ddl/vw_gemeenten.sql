-- osm.vw_gemeenten source

CREATE OR REPLACE VIEW osm.vw_gemeenten
AS SELECT p.relation_id,
    p.tags,
    p.geom
   FROM osm.boundaries p
  WHERE p.tags @> '{"admin_level": "8"}'::jsonb;

  COMMENT ON VIEW osm.vw_gemeenten IS 'Last update: now()';
