class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :language
  attr_accessible :difficulty, :qtext, :votes, :language_id, :language
  
  def language_name
    language.name if language
  end
end
