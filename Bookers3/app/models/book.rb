class Book < ApplicationRecord
	belongs_to :user, dependent: :destroy
	attachment :profile_image

	validates :title, presence: true
    validates :body, length: { in: 0..75 }
end
