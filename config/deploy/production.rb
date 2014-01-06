server 'name', :app, :web, :db, :primary => true
set :branch, 'develop'
set :deploy_to, "/var/www/#{application}"