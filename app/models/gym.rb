class Gym < ApplicationRecord
    has_many :students
    has_many :employees
    has_many :machines
    has_many :trainings
end
