class Comment < ActiveRecord::Base
  belongs_to :recipe
  validates :body, length: { minimum: 2, maximum: 140}
end
