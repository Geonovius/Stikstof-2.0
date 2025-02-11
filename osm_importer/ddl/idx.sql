CREATE INDEX "boundaries_tags_idx" ON osm.boundaries (tags);
CREATE INDEX "lines_tags_idx" ON osm.lines (tags);
CREATE INDEX "points_tags_idx" ON osm.points(tags);
CREATE INDEX "polygons_tags_idx" ON osm.polygons(tags);

CREATE INDEX "boundaries_geom_idx" ON osm.boundaries USING GIST (geom);
CREATE INDEX "lines_geom_idx" ON osm.lines USING GIST (geom);
CREATE INDEX "points_geom_idx" ON osm.points USING GIST (geom);
CREATE INDEX "polygons_geom_idx" ON osm.polygons USING GIST (geom);