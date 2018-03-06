# == Schema Information
#
# Table name: artwork_shares
#
#  id         :integer          not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#

class ArtworkShare < ActiveRecord::Base

validates :artwork_id, uniqueness:
  { scope: :viewer_id,
    message: "You've already shown this one"}

  belongs_to :viewer,
  foreign_key: :viewer_id,
  class_name: :User,
  dependent: :destroy

  belongs_to :art,
  foreign_key: :artwork_id,
  class_name: :Artwork


end
