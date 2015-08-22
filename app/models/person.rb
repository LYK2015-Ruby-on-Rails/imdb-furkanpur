class Person < ActiveRecord::Base
  #has_and_belongs_to_many :movies
  has_many :actors_movies
  has_many :acted_movies, through: :actors_movies, source: :movie

  has_many :directors_movies
  has_many :directed_movies, through: :directors_movies, source: :movie

  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>", :small => "153x214>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
