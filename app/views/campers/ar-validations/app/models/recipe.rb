class Recipe < ActiveRecord::Base
  validates :title, uniqueness: true, format: { with: /brussels sprouts|Brussels sprouts|Brussels Sprouts/ }
  validates :servings, allow_blank: true, numericality: true
  before_save :defaults

  def defaults
    if self.servings.nil?
      self.servings = 1
    end
  end

  has_many :comments
end
