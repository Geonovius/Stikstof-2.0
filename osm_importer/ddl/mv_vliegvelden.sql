-- restrictions.mv_vliegvelden source

CREATE MATERIALIZED VIEW restrictions.mv_vliegvelden
TABLESPACE pg_default
AS SELECT st_union(st_buffer(vw_vliegvelden.geom, (( SELECT buffer.distance
           FROM restrictions.buffer
          WHERE buffer.name::text = 'vliegvelden'::text))::double precision)) AS geom
   FROM osm.vw_vliegvelden
WITH DATA;

-- Permissions

ALTER TABLE restrictions.mv_vliegvelden OWNER TO postgres;
GRANT ALL ON TABLE restrictions.mv_vliegvelden TO postgres;