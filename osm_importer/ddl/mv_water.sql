-- restrictions.mv_water source

CREATE MATERIALIZED VIEW restrictions.mv_water
TABLESPACE pg_default
AS SELECT st_union(st_buffer(vw_water.geom, (( SELECT buffer.distance
           FROM restrictions.buffer
          WHERE buffer.name::text = 'water'::text))::double precision)) AS geom
   FROM osm.vw_water
WITH DATA;

-- Permissions

ALTER TABLE restrictions.mv_water OWNER TO postgres;
GRANT ALL ON TABLE restrictions.mv_water TO postgres;