class Position < ActiveRecord::Base
  belongs_to :page
  belongs_to :cart

end
