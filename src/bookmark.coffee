location = window.location
host = location.hostname
path = location.pathname

# Source -> Site
if host == "github.com"
  parts = path.split("/")
  owner = parts[1]
  repo  = parts[2]
  url   = "http://#{owner}.github.io"

  # User page
  if repo.match /^#{owner}\.github\.(io|com)$/i
    window.location = url

  # Project page
  else
    window.location = "#{url}/#{repo}"

# Site -> Source
else if host.match(/[a-z0-9-]+\.github\.(io|com)$/i)
  parts = host.split(".")
  owner = parts[0]

  # GitHub-owned page
  if parts[2] == "com"
    owner = "github"
    repo  = "#{parts[0]}.github.com"

  # User page
  else if path == "/"
    repo = "#{owner}.github.io"

  # Project page
  else
    repo = path.split("/")[1]

  window.location = "https://github.com/#{owner}/#{repo}"
