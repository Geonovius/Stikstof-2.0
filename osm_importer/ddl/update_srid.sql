ALTER TABLE osm.boundaries ADD the_geom public.geometry NULL;
SELECT UpdateGeometrySRID('osm', 'boundaries', 'the_geom', 28992);
UPDATE osm.boundaries SET the_geom=st_transform(geom,28992);
ALTER TABLE osm.boundaries DROP COLUMN geom;
ALTER TABLE osm.boundaries RENAME COLUMN the_geom TO "geom";

ALTER TABLE osm.lines ADD the_geom public.geometry NULL;
SELECT UpdateGeometrySRID('osm', 'lines', 'the_geom', 28992);
UPDATE osm.lines SET the_geom=st_transform(geom,28992);
ALTER TABLE osm.lines DROP COLUMN geom;
ALTER TABLE osm.lines RENAME COLUMN the_geom TO "geom";

ALTER TABLE osm.points ADD the_geom public.geometry NULL;
SELECT UpdateGeometrySRID('osm', 'points', 'the_geom', 28992);
UPDATE osm.points SET the_geom=st_transform(geom,28992);
ALTER TABLE osm.points DROP COLUMN geom;
ALTER TABLE osm.points RENAME COLUMN the_geom TO "geom";

ALTER TABLE osm.polygons ADD the_geom public.geometry NULL;
SELECT UpdateGeometrySRID('osm', 'polygons', 'the_geom', 28992);
UPDATE osm.polygons SET the_geom=st_transform(geom,28992);
ALTER TABLE osm.polygons DROP COLUMN geom;
ALTER TABLE osm.polygons RENAME COLUMN the_geom TO "geom";
