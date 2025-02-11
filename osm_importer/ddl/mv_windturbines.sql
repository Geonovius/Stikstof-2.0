-- restrictions.mv_windturbines source

CREATE MATERIALIZED VIEW restrictions.mv_windturbines
TABLESPACE pg_default
AS SELECT st_union(st_buffer(vw_windturbines.geom, (( SELECT buffer.distance
           FROM restrictions.buffer
          WHERE buffer.name::text = 'windturbines'::text))::double precision)) AS geom
   FROM osm.vw_windturbines
WITH DATA;

-- Permissions

ALTER TABLE restrictions.mv_windturbines OWNER TO postgres;
GRANT ALL ON TABLE restrictions.mv_windturbines TO postgres;