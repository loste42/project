class Movie < ActiveRecord::Base
  belongs_to :user
  has_one :review
end
