class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  # validating the presence/existence of user model object 
  # (instead of just user_id or post_id)
  # when a new comment is created
  validates :user, presence: true
  validates :post, presence: true
end
