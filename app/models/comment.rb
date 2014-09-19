class Comment < ActiveRecord::Base
  belongs_to :video

  validates :video, presence: true
  validates :body, presence: true
end
