class Question < ActiveRecord::Base
  belongs_to :Category
  belongs_to :Language
  attr_accessible :difficulty, :qtext, :votes, :Language_id, :Language
  
  def language_name
    language.name if language
  end
end
