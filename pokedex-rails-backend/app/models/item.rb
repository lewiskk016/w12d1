# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
    validates :name, presence: true, length: { maximum:255 }
    validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
    validates :pokemon_id, presence: true
    validates :image_url, presence: true
    validates :happiness, presence: true

    belongs_to :pokemon
end
