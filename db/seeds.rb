# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
    Post.destroy_all
    User.destroy_all
    Role.destroy_all
    ActiveRecord::Base.connection.reset_pk_sequence!('roles')
    ActiveRecord::Base.connection.reset_pk_sequence!('posts')
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    puts "Posts: #{Post.all.count}"
    puts "Users: #{User.all.count}"
    puts "Roles: #{Role.all.count}"
    puts "Start roles and admin seed"
    Role.create([{name: 'admin'}, {name: 'user'}])
    role = Role.find_by_name('admin')
    role.users.create(email: 'admin@example.com', password: '123456')
    puts "Roles: #{Role.all.inspect}"
    puts "Admin: #{User.all.inspect}"
else
    puts 'No. do not do this in production'
end