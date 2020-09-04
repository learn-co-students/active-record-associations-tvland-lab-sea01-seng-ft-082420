require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
       ayes = Actor.all.select{|a| a.id == self.id}
       ayes.map{|a| "#{a.first_name} #{a.last_name}" }
       #"#{self.first_name} #{self.last_name}"
  end

end