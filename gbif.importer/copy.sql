-- gbif.observaties definition

-- Drop table

DROP TABLE gbif.observaties;

CREATE TABLE gbif.observaties (
	id serial4 NOT NULL,
	geom public.geometry(point, 28992) NULL,
	gbifID integer NULL,
	datasetkey varchar NULL,
	occurrenceid varchar NULL,
	kingdom varchar NULL,
	phylum varchar NULL,
	"class" varchar NULL,
	"order" varchar NULL,
	"family" varchar NULL,
	genus varchar NULL,
	species varchar NULL,
	infraspecificepithet varchar NULL,
	taxonrank varchar NULL,
	scientificname varchar NULL,
	verbatimscientificname varchar NULL,
	verbatimscientificnameauthorship varchar NULL,
	countrycode varchar NULL,
	locality varchar NULL,
	stateprovince varchar NULL,
	occurrencestatus varchar NULL,
	individualcount int4 NULL,
	publishingorgkey varchar NULL,
	decimallatitude float8 NULL,
	decimallongitude float8 NULL,
	coordinateuncertaintyinmeters float8 NULL,
	coordinateprecision float8 NULL,
	elevation float8 NULL,
	elevationaccuracy float8 NULL,
	"depth" float8 NULL,
	depthaccuracy float8 NULL,
	eventdate varchar NULL,
	"day" int4 NULL,
	"month" int4 NULL,
	"year" int4 NULL,
	taxonkey int4 NULL,
	specieskey int4 NULL,
	basisofrecord varchar NULL,
	institutioncode varchar NULL,
	collectioncode varchar NULL,
	catalognumber varchar NULL,
	recordnumber varchar NULL,
	identifiedby varchar NULL,
	dateidentified timestamp NULL,
	license varchar NULL,
	rightsholder varchar NULL,
	recordedby varchar NULL,
	typestatus varchar NULL,
	establishmentmeans varchar NULL,
	lastinterpreted timestamp NULL,
	mediatype varchar NULL,
	issue varchar NULL,
	CONSTRAINT "observaties_pkey" PRIMARY KEY (id)
);
CREATE INDEX "sidx_observaties_geom" ON gbif.observaties USING gist (geom);

-- Permissions

ALTER TABLE gbif.observaties OWNER TO postgres;
GRANT ALL ON TABLE gbif.observaties TO postgres;

COPY gbif.observaties FROM 'd:\projects\gbifdata\0001329-250426092105405\0001329-250426092105405.csv' DELIMITER E'\t' CSV;