class Post < ActiveRecord::Base

	belongs_to :user

	# dependent: :destroy is tells rails to remove the
	# dependent (has many) objects when the parent object is destroyed
	has_many :comments, dependent: :destroy
end
