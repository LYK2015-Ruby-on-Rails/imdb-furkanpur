class ActorsMovie < ActiveRecord::Base
  belongs_to :movie
  belongs_to :person
end
