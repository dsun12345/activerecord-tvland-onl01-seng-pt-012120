class Show < ActiveRecord::Base
  
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.name.collect {|show| show.actor.full_name}
  end 
  
  
end