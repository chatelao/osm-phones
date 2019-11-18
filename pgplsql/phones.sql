
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
