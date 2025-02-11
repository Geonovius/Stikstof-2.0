-- Index: points_tags_idx

-- DROP INDEX IF EXISTS osm.points_tags_idx;

CREATE INDEX IF NOT EXISTS points_tags_idx
    ON osm.points USING btree
    (tags ASC NULLS LAST)
    WITH (deduplicate_items=True)
    TABLESPACE pg_default;
