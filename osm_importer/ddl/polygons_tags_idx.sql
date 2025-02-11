-- Index: polygons_tags_idx

-- DROP INDEX IF EXISTS osm.polygons_tags_idx;

CREATE INDEX IF NOT EXISTS polygons_tags_idx
    ON osm.polygons USING btree
    (tags ASC NULLS LAST)
    WITH (deduplicate_items=True)
    TABLESPACE pg_default;
