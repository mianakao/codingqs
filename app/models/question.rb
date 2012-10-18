class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :language
  attr_accessible :difficulty, :qtext, :votes, :language_id, :language, :category_id, :category
  
  validates :qtext, presence: true
  
  def language_name
    language.name if language
  end

  def category_name
    category.name if category
  end

end
