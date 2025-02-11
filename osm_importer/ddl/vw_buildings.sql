-- osm.vw_buildings source

CREATE OR REPLACE VIEW osm.vw_buildings
AS SELECT p.area_id,
    p.tags,
    p.geom,
    p.area
   FROM osm.polygons p
  WHERE p.tags @> '{"building": "house"}'::jsonb;

COMMENT ON VIEW osm.vw_buildings IS 'Last update: now()';