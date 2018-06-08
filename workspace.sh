# --- Workspaces Management Commands ---

# ws: Manage Workspaces
ws() {
  make -C "$HOME/Workspaces/$1" $2
}

# wg: Go to Workspace
wg() {
  cd "$HOME/Workspaces/$1" || return
}

# wsh: Shell into the Workspace
wsh() {
  docker exec -it "$1" bash
}

# wr: Run the Workspace
wr() {
  (wg $1 && docker-compose up -d)
}

# wk: Kill the Workspace
wk() {
  (wg $1 && docker-compose down)
}

# --- Project Commands ---

# pr: Manage Projects
psr() {
  make -C "$HOME/Projects/$1" $2
}

# pg: Go to Projects
psg() {
  cd "$HOME/Projects/$1" || return
}

# --- Lab Commands ---

# lb: Manage Labs
lb() {
  make -C "$HOME/Labs/$1" $2
}

# lg: Go to Labs
lg() {
  cd "$HOME/Labs/$1" || return
}

# pr: Manage Project
pr() {
  make -C "$HOME/project/$1" $2
}

# pg: Go to Projects
pg() {
  cd "$HOME/project/$1" || return
}

alias cls="clear"
alias ys="yarn start"
alias yi="yarn"
alias yl="yarn lint"
alias mvn_dev="mvn spring-boot:run -Drun.arguments='spring.profiles.active=develop'"

# backend 
bg() {
  cd "$HOME/project/9PiProjectBackend/$1" || return
}

# frontend
fg() {
  cd "$HOME/project/9PiProjectFrontend/$1" || return
}

# bsh: Shell into the Backend
bsh() {
  docker exec -it "$1" bash
}

# br: Run the Backend
br() {
  (bg $1 && docker-compose up -d)
}

# bk: Kill the Backend
bk() {
  (bg $1 && docker-compose down)
}

# bs: Stop the Backend
bs() {
  (bg $1 && docker-compose stop)
}

# Lazy alias for `docker-compose up`
alias du="docker-compose up"
alias dps="docker ps"
alias dpsa="docker ps -a -s"
alias di="docker images"
