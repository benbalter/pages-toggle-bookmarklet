host = window.location.hostname
path = window.location.pathname

if host == "github.com"
  parts = path.split("/")
  owner = parts[1]
  repo  = parts[2]
  url   = "http://#{owner}.github.io"

  if repo.match /#{owner}.github.(io|com)/i
    window.location = url
  else
    window.location = "#{url}/#{repo}"

else if host.match(/[a-z0-9-]+\.github.(io|com)$/i)
  owner = host.split(".")[0]

  if path == "/"
    repo = "#{owner}.github.io"
  else
    repo = path.split("/")[1]

  window.location = "https://github.com/#{owner}/#{repo}"
