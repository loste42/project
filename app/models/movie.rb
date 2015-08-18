class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  
  has_many :casts
  has_many :actors, through: :casts
  accepts_nested_attributes_for :casts
  
  has_attached_file :image, styles: { medium: "400x600#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
