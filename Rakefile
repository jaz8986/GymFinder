require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "Runs a Pry console"
task :console do 
    ActiveRecord::Base.logger = Logger.new(STDOUT)

    Pry.start
end

desc "Start the server"
task :server do
    if ActiveRecord::Base.connection.migration_context.need_migration?
        puts "Migrations are pending. Make sure to run `rake db:migrate` first"
        return
    end
    exec "bundle exec rerun -b 'rackup config.run'"
end
