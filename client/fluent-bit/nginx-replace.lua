function cb_replace(tag, timestamp, record)
  local path = record["path"]
  path = string.gsub(path, '=[^&=]+', "=Q")
  path = string.gsub(path, '/%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x', "/UUID")
  path = string.gsub(path, '/%d+', "/ID")
  record["path"] = path

  return 2, timestamp, record
end
%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x
