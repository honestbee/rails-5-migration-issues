class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_locale

  def set_locale
    locale = params[:locale]
    I18n.locale = locale if locale
    return if I18n.available_locales.include?(I18n.locale)
    I18n.locale = I18n.default_locale
  end

end
