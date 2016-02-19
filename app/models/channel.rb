class Channel < ActiveRecord::Base
  belongs_to :user
  has_many :posts, dependent: :destroy
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :author, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 100}
  validates :title, uniqueness: true
end
