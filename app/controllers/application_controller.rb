class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :reload_form_builder

  def reload_form_builder
    load 'app/helpers/form_builder.rb'
  end
end
