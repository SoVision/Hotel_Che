module Populator
  # Builds multiple Populator::Record instances and saves them to the database
  class Factory
    def rows_sql_arr
      @records.map do |record|
        quoted_attributes = record.attribute_values.map { |v| @model_class.connection.quote(v) }
        "(#{quoted_attributes.join(', ')})"
      end
    end
  end
end







require 'faker'

namespace :tasks do
  desc "description"
  task filltables: :environment do

  Employee.delete_all
    Employee.populate(15) do |employee|
      employee.name = Faker::Name.name
      employee.position = Faker::Job.position
      employee.gender = Faker::Gender.binary_type
      employee.phone_number = Faker::PhoneNumber.cell_phone_with_country_code
      employee.birthday = Faker::Date.birthday(min_age: 21,max_age: 40)
      employee.salary = Faker::Number.between(from: 10000, to: 20000)
    end

  Client.delete_all
  Client.populate(15) do |client|
    client.name = Faker::Name.name
    client.gender = Faker::Gender.binary_type
    client.phone_number = Faker::PhoneNumber.cell_phone_with_country_code
    client.birthday = Faker::Date.birthday(min_age: 18,max_age: 65)
    client.address = Faker::Address.street_address
  end

  @type_bin = ["Lux","Standart"]
  Room.delete_all
  Room.populate(15) do |room|
    room.typ = @type_bin[rand(@type_bin.size)]
    room.places = Faker::Number.between(from: 1, to: 4)
    room.price = Faker::Number.between(from: 500, to: 1000)
    room.employee_id = Faker::Number.between(from: 1, to: 15)
  end
  Order.delete_all
  Order.populate(15) do |order|
    order.room_id = Faker::Number.between(from: 1, to: 15)
    order.client_id = Faker::Number.between(from: 1, to: 15)
    order.date = Faker::Date.between(from: 100.days.ago, to: Date.today)
    order.during = Faker::Number.between(from: 1, to: 10)
  end
  end
end