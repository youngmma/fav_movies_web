class Movie < ActiveRecord::Base

  belongs_to :director
  belongs_to :genre
  has_many :roles
  has_many :reviews

  validates :title, presence: true
  validates :image_url, presence: true
  validates :year, presence: true

  # def director
  #   Director.find_by(:id => self.director_id)
  # end

end
