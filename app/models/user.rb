class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  # dependent: :destroy is tells rails to remove the
  # dependent (has many) objects when the parent object is destroyed
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
