class Post < ActiveRecord::Base
  attr_accessible :name, :email, :hide_email, :body, :topic, :terms_of_service

  validates :name, :presence => true, :length => { :maximum => 100 }
  validates :email, :presence => true, :length => { :maximum => 100 }
  validates :hide_email, :inclusion => { :in => [ true, false ] }
  validates :topic, :presence => true, :length => { :maximum => 100 }
  validates :body, :presence => true, :length => { :maximum => 1000 }
  validates :terms_of_service, :acceptance => { :accept => true }
end
