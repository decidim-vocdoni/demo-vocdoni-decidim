require "capistrano/setup"
require "capistrano/deploy"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
require "capistrano/rails"
require "capistrano/passenger"
require "capistrano/rbenv"
#
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
