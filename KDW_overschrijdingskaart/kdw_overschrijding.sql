-- aerius.m_kdw_overschrijding source

CREATE MATERIALIZED VIEW aerius.m_kdw_overschrijding
TABLESPACE pg_default
AS SELECT hex.ogc_fid,
    hex.geom,
    hex.receptor_id,
    hex.relevant,
    hex.above_cl,
    hex.exceeding,
    hex.extra_assessment,
    hex.critical_deposition,
    dd.total_deposition - hex.critical_deposition AS kdw_overschrijding
   FROM aerius."base_geometries:hexagons" hex,
    aerius."depositions:depositions" dd
  WHERE hex.receptor_id = dd.receptor_id AND dd.total_deposition > hex.critical_deposition
WITH DATA;