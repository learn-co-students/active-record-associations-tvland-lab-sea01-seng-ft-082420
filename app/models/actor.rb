require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        chars = []
        char = Character.all.select{|c| c.id == self.id}.first.name
        show = Show.all.select{|s| s.id == self.id}.first.name
        chars << "#{char} - #{show}"
        chars.first
    end

end