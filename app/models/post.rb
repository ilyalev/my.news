class Post < ActiveRecord::Base
  attr_accessible :text, :title
  belongs_to :channel
  validates :title, presence: true
end
