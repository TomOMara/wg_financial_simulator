class Portfolio < ActiveRecord::Base
  belongs_to :client
  has_many :stocks
end
