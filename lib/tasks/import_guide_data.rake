namespace :db do
  desc "imports guide data from guide-data.json"
   task :import_guide_data => :environment do
     file = File.read('lib/assets/guide-data.json')
     parsed_data = JSON.parse(file)
     parsed_data.map do |line|
         g = Guide.new
         g.guide_name = line['guide_name']
         g.address = line['address']
         g.city = line['city']
         g.state = line['state']
         g.phone_number = line['phone_number']
         g.save
     end
   end
 end
