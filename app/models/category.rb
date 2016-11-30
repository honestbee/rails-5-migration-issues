class Category < ActiveRecord::Base
  belongs_to :department
  has_and_belongs_to_many :products
  translates :title
  globalize_accessors locales: [:en, 'zh-TW', :ja],
                      attributes: [
                          :title
                      ]

  default_scope -> { includes(:translations).references(:translations).order(priority: :asc, title: :asc) }
end
