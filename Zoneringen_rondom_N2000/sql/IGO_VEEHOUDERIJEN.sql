-- krd."IGO_VEEHOUDERIJEN" definition

-- Drop table

-- DROP TABLE krd."IGO_VEEHOUDERIJEN";

CREATE TABLE krd."IGO_VEEHOUDERIJEN" (
	id serial4 NOT NULL,
	geom public.geometry(point, 28992) NULL,
	od varchar NULL,
	vthobject_id varchar NULL,
	bevoegdgezag varchar NULL,
	adres varchar NULL,
	"type" varchar NULL,
	ippc_installatie varchar NULL,
	aantal_stallen int4 NULL,
	nh3_emissie float8 NULL,
	geur_emissie float8 NULL,
	fijnstof_emissie float8 NULL,
	geiten int4 NULL,
	kippen int4 NULL,
	rundvee int4 NULL,
	schapen int4 NULL,
	varkens int4 NULL,
	overige_dieren varchar NULL,
	geo_x varchar NULL,
	geo_y varchar NULL,
	toelichting_kaart varchar NULL,
	CONSTRAINT "IGO_VEEHOUDERIJEN_pkey" PRIMARY KEY (id)
);
CREATE INDEX "sidx_IGO_VEEHOUDERIJEN_geom" ON krd."IGO_VEEHOUDERIJEN" USING gist (geom);
COMMENT ON TABLE krd."IGO_VEEHOUDERIJEN" IS 'https://github.com/Geonovius/Stikstof-2.0/issues/2';

-- Permissions

ALTER TABLE krd."IGO_VEEHOUDERIJEN" OWNER TO postgres;
GRANT ALL ON TABLE krd."IGO_VEEHOUDERIJEN" TO postgres;