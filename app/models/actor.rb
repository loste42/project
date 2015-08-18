class Actor < ActiveRecord::Base
    
    has_many :casts
    has_many :movies, through: :casts
    accepts_nested_attributes_for :casts, :allow_destroy => true
    
    has_attached_file :image, styles: { medium: "400x600#", tiny: "50x100#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
