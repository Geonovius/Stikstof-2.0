do $$
 declare 
  x INTEGER;
  y INTEGER;
  query_string TEXT;
 begin
  x := 1;
  y := 170;
  while x <= y loop  	
  	query_string := format('REFRESH MATERIALIZED VIEW gbif.m_gbif2habitat_%s WITH DATA', x);
	raise notice 'EXECUTE %', x;
   	EXECUTE query_string;  
  	x := x + 1;
  end loop;
 end$$;