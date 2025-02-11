-- View: osm.vw_vliegvelden

-- DROP VIEW osm.vw_vliegvelden;

CREATE OR REPLACE VIEW osm.vw_vliegvelden
 AS
 SELECT polygons.area_id,
    polygons.tags,
    polygons.geom,
    polygons.area
   FROM osm.polygons
  WHERE (polygons.tags ->> 'aeroway'::text) IS NOT NULL OR (polygons.tags ->> 'military'::text) IS NOT NULL;

ALTER TABLE osm.vw_vliegvelden
    OWNER TO postgres;

