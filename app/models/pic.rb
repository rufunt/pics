class Pic < ApplicationRecord
  #acts_as_votable
  belongs_to :user

  
  has_attached_file :image, styles: { medium: "300x300>" }, :default_url => ":style/rails1.jpg", validate_media_type: false
  #has_attached_file :image, styles: { :medium => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
