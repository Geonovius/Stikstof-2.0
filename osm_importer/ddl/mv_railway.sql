-- restrictions.mv_railway source

CREATE MATERIALIZED VIEW restrictions.mv_railway
TABLESPACE pg_default
AS SELECT st_union(st_buffer(vw_railway.geom, (( SELECT buffer.distance
           FROM restrictions.buffer
          WHERE buffer.name::text = 'railway'::text))::double precision)) AS geom
   FROM osm.vw_railway
WITH DATA;

-- Permissions

ALTER TABLE restrictions.mv_railway OWNER TO postgres;
GRANT ALL ON TABLE restrictions.mv_railway TO postgres;