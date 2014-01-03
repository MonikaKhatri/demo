namespace :db do
  task populate: :environment do
    User.create!(name: "Monika", email: "monika@complitech.net", password: "monika", password_confirmation: "monika")
      
    10.times do |n|
      name = Fake::Name.name
      email = "test#{n+1}@complitect.net"
      password = "password"
      User.create!(name: name, email: email, password: password, password_confirmation: "password")
    end
  end
end