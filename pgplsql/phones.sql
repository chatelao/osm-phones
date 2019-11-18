/*
https://dbfiddle.uk/?rdbms=postgres_10&fiddle=fb942c970228577826f80aba53c8d71e
*/
CREATE or REPLACE FUNCTION osmabbrv_phone(longname text) RETURNS TEXT AS $$
DECLARE
  normalize text;
 BEGIN
  abbrev=longname;
  abbrev=replace_regex('(0)','',abbrev);
  abbrev=replace_regex('[-/ ]','',abbrev);
  return abbrev;
 END;
$$ LANGUAGE 'plpgsql' IMMUTABLE;
