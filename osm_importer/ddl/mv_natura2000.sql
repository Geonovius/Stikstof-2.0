-- restrictions.mv_natura2000 source

CREATE MATERIALIZED VIEW restrictions.mv_natura2000
TABLESPACE pg_default
AS SELECT st_union(st_buffer("Natura2000".geom, (( SELECT b.distance
           FROM restrictions.buffer b
          WHERE b.name::text = 'N2000'::text))::double precision)) AS geom
   FROM restrictions."Natura2000"
  WHERE "Natura2000".ms::text = 'NL'::text
WITH DATA;