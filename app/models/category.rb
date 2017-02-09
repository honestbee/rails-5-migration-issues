class Category < ActiveRecord::Base
  belongs_to :department
  has_and_belongs_to_many :products
  translates :title
  globalize_accessors locales: [:en, 'zh-TW', :ja],
                      attributes: [
                          :title
                      ]

  default_scope -> do
    includes(:translations).
        references(:translations).
        order('categories.priority asc, category_translations.title asc')
  end
end
