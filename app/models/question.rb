class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :language
  attr_accessible :difficulty, :qtext, :votes, :language_id, :language, :category_id, :category
  
  validates :qtext, presence: true
  
  # rating
  scope :top_five, order('votes desc').limit(5)
  
  # difficulty
  scope :xhard, where('difficulty = ?', 5)
  scope :hard,  where('difficulty = ?', 4)
  scope :med,   where('difficulty = ?', 3)
  scope :easy,  where('difficulty = ?', 2)
  scope :xeasy, where('difficulty = ?', 1)

  
  def language_name
    language.name if language
  end

  def category_name
    category.name if category
  end

end
