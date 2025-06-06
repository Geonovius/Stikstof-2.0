-- gbif.m_gbif_2_deposition_n2k source
do $$
 declare 
  x INTEGER;
  y INTEGER;
  query_string TEXT;
 begin
  x := 64;
  y := 64;
  while x <= y loop  	
  	raise notice 'EXECUTE %', x;
	query_string := format('CREATE MATERIALIZED VIEW gbif.m_gbif_2_deposition_n2k_%s
TABLESPACE pg_default
AS SELECT id,
    geom,
    gbifid,
    datasetkey,
    occurrenceid,
    kingdom,
    phylum,
    class,
    "order",
    family,
    genus,
    species,
    infraspecificepithet,
    taxonrank,
    scientificname,
    verbatimscientificname,
    verbatimscientificnameauthorship,
    countrycode,
    locality,
    stateprovince,
    occurrencestatus,
    individualcount,
    publishingorgkey,
    decimallatitude,
    decimallongitude,
    coordinateuncertaintyinmeters,
    coordinateprecision,
    elevation,
    elevationaccuracy,
    depth,
    depthaccuracy,
    eventdate,
    day,
    month,
    year,
    taxonkey,
    specieskey,
    basisofrecord,
    institutioncode,
    collectioncode,
    catalognumber,
    recordnumber,
    identifiedby,
    dateidentified,
    license,
    rightsholder,
    recordedby,
    typestatus,
    establishmentmeans,
    lastinterpreted,
    mediatype,
    issue,
    deposition_year,
    receptor_id,
    round(total_deposition),
    n2k_naam,
    n2k_nr
   FROM gbif.v_gbif2deposition
   where n2k_nr = %s
WITH DATA;', x, x);
	EXECUTE query_string;	
	
	
	
  	x := x + 1;
  end loop;
 end$$;


