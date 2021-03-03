class Post < ApplicationRecord
    validates :content, presence: true,
              :length => {:maximum => 200}

    validates :image_url, presence: true
end
