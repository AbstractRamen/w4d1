# == Schema Information
#
# Table name: artworks
#
#  id        :integer          not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#

class Artwork < ActiveRecord::Base

validates :title, uniqueness:
  { scope: :artist_id,
    message: 'Think of another name'}

belongs_to :artist,
  foreign_key: :artist_id,
  class_name: :User,
  dependent: :destroy

has_many :shares,
foreign_key: :artwork_id,
class_name: :ArtworkShare

has_many :shared_viewers,
through: :shares,
source: :viewer,
dependent: :destroy

end
