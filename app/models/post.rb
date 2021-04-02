class Post < ApplicationRecord
      validates :user, :string
      validates :content, :text
      validates :title, :string
      
      has_many :comments
      has_many :likes
end


