DO $$
DECLARE temprow text;
BEGIN FOR temprow IN
  SELECT tablename FROM pg_tables WHERE schemaname = 'od' ORDER BY tablename
  LOOP
  	RAISE NOTICE 'Clean up : %',temprow;
	EXECUTE 'DELETE FROM od.'||temprow||' t WHERE ST_DISJOINT(t.geom, (SELECT vc.the_geom FROM public.vggm_contour vc))';
	EXECUTE 'COMMENT ON TABLE od.'||temprow||' IS ''Laatste update: '||NOW()||'''';
  END LOOP;

-- varkens kippen 250m
CREATE OR REPLACE VIEW od.vw_igo_veehouderijen_selectie_varkens_kippen_buffer_250m AS SELECT st_buffer(v.geom, 250::double precision) AS st_buffer, v.ogc_fid, v.gml_id, v.od, v.vthobject_id, v.bevoegdgezag, v.adres, v.type, v.ippc_installatie, v.aantal_stallen, v.nh3_emissie, v.geur_emissie, v.fijnstof_emissie, v.geiten, v.kippen, v.rundvee, v.schapen, v.varkens, v.overige_dieren, v.geo_x, v.geo_y, v.toelichting_kaart FROM od.igo_veehouderijen v WHERE v.varkens IS NOT NULL OR v.kippen IS NOT NULL;
GRANT SELECT ON TABLE od.vw_igo_veehouderijen_selectie_varkens_kippen_buffer_250m TO vggm_view;

	
-- varkens kippen 500m
CREATE OR REPLACE VIEW od.vw_igo_veehouderijen_selectie_varkens_kippen_buffer_500m AS SELECT st_buffer(v.geom, 500::double precision) AS st_buffer, v.ogc_fid, v.gml_id, v.od, v.vthobject_id, v.bevoegdgezag, v.adres, v.type, v.ippc_installatie, v.aantal_stallen, v.nh3_emissie, v.geur_emissie, v.fijnstof_emissie, v.geiten, v.kippen, v.rundvee, v.schapen, v.varkens, v.overige_dieren, v.geo_x, v.geo_y, v.toelichting_kaart FROM od.igo_veehouderijen v WHERE v.varkens IS NOT NULL OR v.kippen IS NOT NULL;
GRANT SELECT ON TABLE od.vw_igo_veehouderijen_selectie_varkens_kippen_buffer_500m TO vggm_view;
	
	
-- geiten buffer 2000m
CREATE OR REPLACE VIEW od.vw_igo_veehouderijen_selectie_geiten_buffer2000m AS SELECT st_buffer(v.geom, 2000::double precision) AS st_buffer, v.ogc_fid, v.gml_id, v.od, v.vthobject_id, v.bevoegdgezag, v.adres, v.type, v.ippc_installatie, v.aantal_stallen, v.nh3_emissie, v.geur_emissie, v.fijnstof_emissie, v.geiten, v.kippen, v.rundvee, v.schapen, v.varkens, v.overige_dieren, v.geo_x, v.geo_y, v.toelichting_kaart FROM od.igo_veehouderijen v WHERE v.geiten IS NOT NULL;
GRANT SELECT ON TABLE od.vw_igo_veehouderijen_selectie_geiten_buffer2000m TO vggm_view;

END $$