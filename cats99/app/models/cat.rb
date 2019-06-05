class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  COLORS = ['red', 'white', 'brown', 'orange'] 
  validates :color, :inclusion => { :in => COLORS} 
  validates :sex, :inclusion => { :in => %w(M F)}

  def age
 
    time_ago_in_words(self.birth_date)
    
  end

end
