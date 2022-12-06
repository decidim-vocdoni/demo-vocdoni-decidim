lock "~> 3.17.1"

set :application, "demo-vocdoni-decidim"
set :repo_url, ENV.fetch("DEPLOY_REPO_URL")
set :branch, ENV.fetch("DEPLOY_BRANCH", "main")
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :deploy_to, "/var/www/vocdoni.demo.decidim.org"
append :linked_files, "config/database.yml", 'config/master.key'
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage"

set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
