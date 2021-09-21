class Connection < ApplicationRecord
	validates :name, uniqueness: true
end
