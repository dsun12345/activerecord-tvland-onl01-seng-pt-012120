class Show < ActiveRecord::Base
  
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.actors.collect {|showname| showname.actors}
  end 
  
  
end