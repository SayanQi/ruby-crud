# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Student.create(name: "sayan", age: 15, address: "C block")
Student.create(name: "tatai", age: 25, address: "A block")
Student.create(name: "ayan", age: 35, address: "B block")
Student.create(name: "bikam", age: 45, address: "D block")
Student.create(name: "kobi", age: 55, address: "E block",school: "PBD", medium: "Bengali", email: "sad@g.com", phone:123456789, class: 12)

Teacher.create(name: "rakesh", age: 15)
Teacher.create(name: "amal", age: 25)
Teacher.create(name: "vabesh", age: 35)
Teacher.create(name: "madan", age: 45)
Teacher.create(name: "bimal", age: 55)
