# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'yaml'
fname = File.expand_path("../seeds/initial_incidents.yaml", __FILE__)
incidents = YAML.load_file(fname)
puts "Opening #{fname}: #{incidents.length} incidents"
incidents.each do |d|
    i = Incident.create(d)
    puts "#{i.date.strftime('%Y-%m-%d')} #{i.full_name}, #{i.age}"
end
