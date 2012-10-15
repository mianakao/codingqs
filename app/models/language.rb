class Language < ActiveRecord::Base
  has_many :questions
  attr_accessible :name, :version
end
