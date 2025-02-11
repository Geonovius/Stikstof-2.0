-- restrictions.mv_powerlines source

CREATE MATERIALIZED VIEW restrictions.mv_powerlines
TABLESPACE pg_default
AS SELECT 
    st_union(st_buffer(vw_powerlines.geom, (( SELECT buffer.distance
           FROM restrictions.buffer
          WHERE buffer.name::text = 'powerlines'::text))::double precision)) AS geom
   FROM osm.vw_powerlines
WITH DATA;

-- Permissions

ALTER TABLE restrictions.mv_powerlines OWNER TO postgres;
GRANT ALL ON TABLE restrictions.mv_powerlines TO postgres;