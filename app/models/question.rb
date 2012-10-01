class Question < ActiveRecord::Base
  belongs_to :Category
  belongs_to :Language
  attr_accessible :difficulty, :qtext, :votes
end
