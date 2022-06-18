require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end

  debas = Student.new('Debas', 'Ngus', 'dbus', 'debas31@gmail.com',  'password1')

  jhon = Student.new('Jhon', 'Doe', 'dbus', 'example@gmail.com',  'password2')

  hashed_password = debas.create_hash_digest(debas.password)

  puts hashed_password

end
