class Product < ActiveRecord::Base
  belongs_to :brand
  has_many :categories_products
  has_many :categories, through: :categories_products
  serialize :description, JSON
  translates :title, :description
  globalize_accessors locales: [:en, 'zh-TW', :ja],
                      attributes: [
                          :title, :description
                      ]
end
