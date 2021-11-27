class Employee < ApplicationRecord
    has_many :evaluation_employees
    
    validates :name, presence: true, length: { minimum: 3 }
    validates :office, presence: true   
end
