class Post < ApplicationRecord
	validates :title, presence: true # この行を追加
end
