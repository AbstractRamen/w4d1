# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  username :string
#

class User < ActiveRecord::Base

validates :username, presence: true, uniqueness: true

has_many :artworks,
  foreign_key: :artist_id,
  class_name: :Artwork

has_many :shares,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare

has_many :shared_artworks,
  through: :shares,
  source: :art 

end
