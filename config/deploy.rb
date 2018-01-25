require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rbenv'

set :domain,      'qlear-web'
set :user,        'deploy'
set :deploy_to,   '/data/www/qlear-blog'
set :repository,  'git@github.com:rdd-giga/qlear-blog.git'
set :branch,      'gh-pages'

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