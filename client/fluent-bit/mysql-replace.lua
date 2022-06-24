function cb_replace(tag, timestamp, record)
  -- discard not-parsed records
  if record["time"] == nil then
    return -1, 0, 0
  end

  local query = record["query"]
  query = string.gsub(query, '".*"', "S")
  query = string.gsub(query, '%d+', "N")
  record["query"] = query

  return 2, timestamp, record
end
