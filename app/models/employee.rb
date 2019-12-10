class Employee < ApplicationRecord
  validates :name, :presence => {:message => "Вкажіть ім'я"}
  validates :position, :presence => {:message => "Вкажіть посаду"}
  validates :gender, :presence => {:message => "Вкажіть стать"}
  validates :phone_number, :presence => {:message => "Вкажіть номер телефону"}
  validates :birthday, :presence => {:message => "Вкажіть дату народження"}
  validates :salary, numericality: {greater_than: 0, :message => "Заробітня плата повинна бути більшою за 0"}
end
