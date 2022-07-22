function cb_replace(tag, timestamp, record)
  -- discard not-parsed records
  if record["path"] == nil then
    return -1, 0, 0
  end

  local path = record["path"]
  path = string.gsub(path, '=[^&=]+', "=Q")
  path = string.gsub(path, '/%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x', "/UUID")
  path = string.gsub(path, '/%d+', "/:id")
  record["path"] = path

  return 2, timestamp, record
end
