location = window.location

if window.location.hostname == "github.com"
  parts = window.location.pathname.split("/")
  owner = parts[1]
  repo  = parts[2]
  url   = "http://#{owner}.github.io"

  if repo.match /#{owner}.github.(io|com)/i
    window.location = url
  else
    window.location = "#{url}/#{repo}"

else if window.location.hostname.match(/[a-z0-9-]+\.github.(io|com)$/i)
  owner = window.location.hostname.split(".")[0]

  if window.location.pathname == "/"
    repo = "#{owner}.github.io"
  else
    repo = window.location.pathname.split("/")[1]

  window.location = "https://github.com/#{owner}/#{repo}"
