class Port < ActiveRecord::Base
  validates :name, presence: true
end
