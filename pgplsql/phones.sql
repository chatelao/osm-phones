/*
https://dbfiddle.uk/?rdbms=postgres_10&fiddle=fb942c970228577826f80aba53c8d71e
*/
CREATE or REPLACE FUNCTION osmabbrv_get_msidin(phone_number text, country text default null) RETURNS TEXT AS $$
DECLARE
  result text;
 BEGIN
  result=phone_number;
  -- if regexp_matches('^+', phone_number)
  result=replace_regex('(0)','',abbrev);
  result=replace_regex('[-/ ]','',abbrev);
  return result;
 END;
$$ LANGUAGE 'plpgsql' IMMUTABLE;
