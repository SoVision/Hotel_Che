class Room < ApplicationRecord
  belongs_to :employee
  validates :typ, :presence => {:message => "Вкажіть тип"}
  validates :places, numericality: {greater_than: 0, :message => "Кількість місць повинна бути більшою за 0"}
  validates :price, numericality: {greater_than: 0, :message => "Вартість повинна бути більшою за 0"}
end
