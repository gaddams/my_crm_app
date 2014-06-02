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
{:name => "PayPal", :status => "WIP", :contact_id => 1}
{:name => "PayPal", :status => "WIP", :contact_id => 2}
{:name => "Accenture", :status => "WIP", :contact_id => 3}
{:name => "Accenture", :status => "WIP", :contact_id => 4}
{:name => "Autodesk", :status => "WIP", :contact_id => 5}
]

company_hashes.each do |company_hash|
  company = Company.new
  company.name = company_hash[:name]
  company.status = company_hash[:status]
  company.contact_id = company_has[:contact_id]

  random_user = User.offset(rand(User.count)).limit(1).first
  contact.owner_id = random_user.id
  conatct.save
end

contact_hashes = [
{:name => "Amol", :company => 1, :hr => 0, :kelloggalum => 1}
{:name => "Keith", :company => 1, :hr => 0, :kelloggalum => 1}
{:name => "Paul", :company => 3, :hr => 0, :kelloggalum => 1}
{:name => "Autodesk", :company => 5, :hr => 0, :kelloggalum => 1}
]

contact_hashes.each do |contact_hash|
  contact = Contact.new
  contact.name = contact_hash[:name]
  contact.status = contact_hash[:status]
  contact.contact_id = contact_has[:contact_id] 
  conatct.save
end

interaction_hash = [
{:date => "2014-05-10", :contact_id => 1, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01T12:00:00"}
{:date => "2014-05-12", :contact_id => 1, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01T12:00:00"}
{:date => "2014-05-10", :contact_id => 2, :user_id => 2, :message => "blah blah blah", :lastremindedon => "2014-06-01T12:00:00"}
{:date => "2014-05-12", :contact_id => 2, :user_id => 2, :message => "blah blah blah", :lastremindedon => "2014-06-01T12:00:00"}
{:date => "2014-05-10", :contact_id => 3, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01T12:00:00"}
{:date => "2014-05-12", :contact_id => 3, :user_id => 1, :message => "blah blah blah", :lastremindedon => "2014-06-01T12:00:00"}
]
