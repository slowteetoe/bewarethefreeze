require 'csv'

namespace :data do
  desc "import data from files to database"
  task :import => :environment do
    CSV.foreach("data/zipcode.csv") do |row|
      # "zip","city","state","latitude","longitude","timezone","dst"
      l = Location.find_or_initialize_by_zip(row[0])
      l.city = row[1]
      l.state = row[2]
      l.lat = row[3]
      l.long = row[4]
      l.save!
      puts "Saved #{l.zip}"
    end
  end
end
