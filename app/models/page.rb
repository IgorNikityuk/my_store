class Page < ActiveRecord::Base

  has_many :positions
  has_many :carts, through: :positions

  has_many :comments, as: :commentable

end