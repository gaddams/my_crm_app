# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new
user.email = "shwetha@example.com"
user.password = "colts123"
user.password_confirmation = "colts123"
user.save

user = User.new
user.email = "shwetha1@example.com"
user.password = "lions123"
user.password_confirmation = "lions123"
user.save

company_hashes = [
{:name => "PayPal", :status => "WIP"},
{:name => "Accenture", :status => "WIP"},
{:name => "Autodesk", :status => "WIP"}
]

company_hashes.each do |company_hash|
  company = Company.new
  company.name = company_hash[:name]
  company.status = company_hash[:status]
  company.contact_id = company_hash[:contact_id]

  random_user = User.offset(rand(User.count)).limit(1).first
  company.user_id = random_user.id
  company.save
end

puts "There are now #{Company.count} companies."

contact_hashes = [
{:name => "Amol", :company_id => 1, :hr => false, :kelloggalum => true},
{:name => "Keith", :company_id => 1, :hr => false, :kelloggalum => true},
{:name => "Paul", :company_id => 2, :hr => false, :kelloggalum => true},
{:name => "Autodesk", :company_id => 3, :hr => false, :kelloggalum => true}
]

contact_hashes.each do |contact_hash|
  contact = Contact.new
  contact.name = contact_hash[:name]
  contact.company_id = contact_hash[:company_id]
  contact.hr = contact_hash[:hr]
  contact.kelloggalum = contact_hash[:kelloggalum]
  contact.save
end
puts "There are now #{Contact.count} contacts."

interaction_hashes = [
{:date => "2014-05-10", :contact_id => 1, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01"},
{:date => "2014-05-12", :contact_id => 1, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01"},
{:date => "2014-05-10", :contact_id => 2, :user_id => 2, :message => "blah blah blah", :lastremindedon => "2014-06-01"},
{:date => "2014-05-12", :contact_id => 2, :user_id => 2, :message => "blah blah blah", :lastremindedon => "2014-06-01"},
{:date => "2014-05-10", :contact_id => 3, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01"},
{:date => "2014-05-12", :contact_id => 3, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01"}
]

interaction_hashes.each do |interaction_hash|
  interaction = Interaction.new
  interaction.date = interaction_hash[:date]
  interaction.message = interaction_hash[:message]
  interaction.contact_id = interaction_hash[:contact_id]
  interaction.user_id = interaction_hash[:user_id]
  interaction.lastremindedon = interaction_hash[:lastremindedon]
  interaction.save
end

puts "There are now #{Interaction.count} interactions."
