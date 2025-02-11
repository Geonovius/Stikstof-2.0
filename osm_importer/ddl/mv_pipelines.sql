-- restrictions.mv_pipelines source

CREATE MATERIALIZED VIEW restrictions.mv_pipelines
TABLESPACE pg_default
AS SELECT 
    st_union(st_buffer(vw_pipelines.geom, (( SELECT buffer.distance
           FROM restrictions.buffer
          WHERE buffer.name::text = 'pipelines'::text))::double precision)) AS geom
   FROM osm.vw_pipelines
WITH DATA;

-- Permissions

ALTER TABLE restrictions.mv_pipelines OWNER TO postgres;
GRANT ALL ON TABLE restrictions.mv_pipelines TO postgres;