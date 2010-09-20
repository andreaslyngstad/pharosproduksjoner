class Message < ActiveRecord::Base
  validates_presence_of :name, :subject, :body, :message => "Må fylles"
  validates_format_of :email, :with => /^(\S+)@(\S+)\.(\S+)$/
  
  
end
