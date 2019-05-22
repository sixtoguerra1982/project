class Project < ApplicationRecord
    validates :name, :state, :description, presence: true
end
