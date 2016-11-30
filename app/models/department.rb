class Department < ActiveRecord::Base
  has_many :categories
  belongs_to :brand
  translates :name
  globalize_accessors locales: [:en, 'zh-TW', :ja],
                      attributes: [
                          :name
                      ]
  default_scope -> { includes(:translations).references(:translations).order(priority: :desc, name: :asc) }
end
