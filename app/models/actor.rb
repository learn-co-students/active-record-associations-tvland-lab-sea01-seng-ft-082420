class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    #returns the first and last name of an actor
    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
  
end