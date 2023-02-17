lock "~> 3.17.1"

set :application, "demo-vocdoni-decidim"
set :repo_url, "https://github.com/decidim-vocdoni/demo-vocdoni-decidim.git"
set :branch, ENV.fetch("DEPLOY_BRANCH", "main")
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :deploy_to, "/var/www/vocdoni.demo.decidim.org"
append :linked_files, "config/database.yml", 'config/master.key', '.rbenv-vars'
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage", "node_modules"

set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip

before "deploy:assets:precompile", "deploy:npm_install"
namespace :deploy do
  desc "Run npm install"
  task :npm_install do
    on roles(:web) do
      within release_path do
        execute("cd #{release_path} && npm install")
      end
    end
  end
end

Rake::Task["deploy:assets:backup_manifest"].clear_actions
