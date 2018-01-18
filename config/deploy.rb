require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rbenv'

set :domain,      'qlear-web'
set :user,        'deploy'
set :deploy_to,   '/data/www/qlear-blog'
set :repository,  'git@github.com:rdd-giga/qlear-blog.git'
set :branch,      'master'

task :environment do
  queue %[export JEKYLL_ENV=production]
  invoke :'rbenv:load'
end

task :setup => :environment do
  queue! %[mkdir -p "#{deploy_to}/public"]
  queue! %[chmod g+rx-w,u+rwx "#{deploy_to}/public"]
end

desc "Deploying blog ..."
task :deploy => :environment do
  deploy do
    invoke :'git:clone'
    invoke :'bundle:install'
    invoke :'deploy:cleanup'

    queue %[bundle exec jekyll build -d #{deploy_to}/public]
  end
end