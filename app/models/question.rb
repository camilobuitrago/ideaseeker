class Question < ActiveRecord::Base
  attr_accessible :text
  
  belongs_to :user
  
  def adjective
    adjectives.split(' ')
  end    
  
  def adjective=(text)
    text.join(' ')
  end
end
