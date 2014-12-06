class Auction < ActiveRecord::Base
  validates :item, presence: true,
                      length: { minimum: 5 }
end
