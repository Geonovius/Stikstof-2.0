-- restrictions.mv_roads source

CREATE MATERIALIZED VIEW restrictions.mv_roads
TABLESPACE pg_default
AS SELECT st_union(st_buffer(vw_roads.geom, (( SELECT buffer.distance
           FROM restrictions.buffer
          WHERE buffer.name::text = 'roads'::text))::double precision)) AS geom
   FROM osm.vw_roads
WITH DATA;

-- Permissions

ALTER TABLE restrictions.mv_roads OWNER TO postgres;
GRANT ALL ON TABLE restrictions.mv_roads TO postgres;