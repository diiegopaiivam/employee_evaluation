class Employee < ApplicationRecord
    has_many :evaluation_employees

    mount_uploader :avatar, AvatarUploader
    
    validates :name, presence: true, length: { minimum: 3 }
    validates :office, presence: true   
end
