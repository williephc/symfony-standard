set :application, "symfony-standard"
set :domain,      "62.4.19.91"
set :deploy_to,   "/var/www/symfony-standard"

set :repository,  "https://github.com/williephc/symfony-standard.git"
set :scm,         :git
set :deploy_via,  :rsync_with_remote_cache
set :use_sudo,	false
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

#commented by me -- set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :keep_releases,  3

set :user, "www-data"
set :shared_files,["app/config/parameters.yml"]
set :shared_children,     [app_path + "/logs", web_path + "/uploads"]
set :use_composer, true
set :update_vendors, true

# ssh config
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
ssh_options[:auth_methods] = ["publickey"]
ssh_options[:keys] = ["/Users/grp/.ssh/cloud-guillermor.pem"]


# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL
