class Connection < ApplicationRecord
	validates :name, uniqueness: true, length: {minimum: 5}, allow_blank: false
	CONNECTION_TYPES = [["Connection 1", 'connection one'],["Connection 2", "Connection two"],["Connection 3", "Connection three"]]
end
