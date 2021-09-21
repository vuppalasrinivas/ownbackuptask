class Connection < ApplicationRecord
	validates :name, uniqueness: true
	CONNECTION_TYPES = [["Connection 1", 'connection one'],["Connection 2", "Connection two"],["Connection 3", "Connection three"]]
end
