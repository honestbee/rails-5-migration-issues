class Brand < ActiveRecord::Base
  has_many :departments
  has_many :products
  translates :name
  globalize_accessors locales: [:en, 'zh-TW', :ja],
                      attributes: [
                          :name
                      ]
  scope :update_scope, -> do
    unscope(:includes, :order).with_translations
  end

  default_scope { includes(:translations).order(display_order: :asc, id: :asc) }
end
