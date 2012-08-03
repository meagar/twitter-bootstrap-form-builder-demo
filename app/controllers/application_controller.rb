class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :reload_form_builder

  def reload_form_builder
    load 'vendor/twitter-bootstrap-form-builder/lib/twitter-bootstrap-form-builder/form_builder.rb'
    load 'vendor/twitter-bootstrap-form-builder/lib/twitter-bootstrap-form-builder/helper.rb'
  end
end
