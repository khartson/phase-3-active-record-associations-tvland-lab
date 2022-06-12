class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        actors_list = []
        self.actors.each do |a|
            actors_list << a.full_name
        end
        actors_list
    end 
end