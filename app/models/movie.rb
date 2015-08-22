class Movie < ActiveRecord::Base
  has_many :actors_movies
  has_many :actors, through: :actors_movies, source: :person

  has_many :categories_movies
  has_many :categories, through: :categories_movies

  has_many :directors_movies
  has_many :directors, through: :directors_movies, source: :person

  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>", :small => "153x214>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :comments
  acts_as_commentable

  ratyrate_rateable "rate"
end
