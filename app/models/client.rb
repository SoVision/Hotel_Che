class Client < ApplicationRecord
  validates :name, :presence => {:message => "Вкажіть ім'я"}
  validates :birthday, :presence => {:message => "Вкажіть дату народження"}
  validates :gender, :presence => {:message => "Вкажіть стать"}
  validates :address, :presence => {:message => "Вкажіть адресу"}
  validates :phone_number, :presence => {:message => "Вкажіть номер телефону"}
end
