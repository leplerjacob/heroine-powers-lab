class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 15}
    validates :summary, length: {maximum: 25}
    validates :category, inclusion: {in: %w[Fiction Non-Fiction]}

end
