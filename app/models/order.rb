class Order < ApplicationRecord
  belongs_to :client
  belongs_to :room
  validates :date, :presence => {:message => "Вкажіть дату заселення"}
  validates :during, numericality: {greater_than: 0, :message => "Тривалість не може бути меншою за 0"}
end
