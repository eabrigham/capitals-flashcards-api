# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'european-capitals.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    c = Card.new
    c.genre = row['Region']
    c.side_a = row['Country']
    c.side_b = row['Capital']
    c.save
    puts "card #{c.side_b}, #{c.side_a} in #{c.genre} saved"
end

puts "There are now #{Card.count} rows in the Card table"
