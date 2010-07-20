namespace :db do
  desc "fill database"
  task :populate => :environment do
    user = User.new(:login => "admin", :email => "admin@admin.com", :name => "tutto", :password => "xxxxxxxx", :password_confirmation => "xxxxxxxx")
    user.save  
    user = User.new(:login => "simone", :email => "k5mmx@yahoo.com", :name => "parte", :password => "xxxxxxxx", :password_confirmation => "xxxxxxxx")
    user.save  
  end
end
