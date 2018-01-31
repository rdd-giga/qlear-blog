require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rbenv'

set :user,        'deploy'
set :repository,  'git@github.com:rdd-giga/qlear-blog.git'
set :branch,      'gh-pages'
set :deploy_to,   '/data/www/qlear-blog'

server = ENV['s']||ENV['server']

if server == 'production'
  set :domain, "qlear-web"
else
  set :domain, "qlear-testing"
end

task :environment do
  invoke :'rbenv:load'
end

desc "Deploying blog ..."
task :deploy => :environment do
  deploy do
    invoke :'git:clone'
    invoke :'bundle:install'
    queue "#{bundle_prefix} jekyll build"
  end
end