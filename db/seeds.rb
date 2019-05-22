User.create!(name:  "管理者",
             email: "email@sample.com",
             password:              "password",
             password_confirmation: "password",
             employee_number: 0,
             uid: 0,
             admin: true)

User.create!(name:  "上長A",
             email: "email1@sample.com",
             password:              "password",
             password_confirmation: "password",
             employee_number: 1,
             uid: 1,
             superior: true)             

User.create!(name:  "上長B",
             email: "email2@sample.com",
             password:              "password",
             password_confirmation: "password",
             employee_number: 2,
             uid: 2,
             superior: true)               
             
User.create!(name:  "一般A",
             email: "email3@sample.com",
             password:              "password",
             password_confirmation: "password",
             employee_number: 3,
             uid: 3,
             superior: true)  
             
User.create!(name:  "一般B",
             email: "email4@sample.com",
             password:              "password",
             password_confirmation: "password",
             employee_number: 4,
             uid: 4,
             superior: true)
             
Base.create!(base_number: "1",
             base_name: "東京",
             attendance_type: "出勤")

# Faker::Config.locale = :ja #【勤怠B】 No.2

# 59.times do |n|
#   name  = Faker::Name.name 
#   email = "email#{n+1}@sample.com"
#   password = "password"
#   User.create!(name:  name,
#               email: email,
#               password:              password,
#               password_confirmation: password)
# end