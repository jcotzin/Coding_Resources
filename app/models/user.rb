class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :resources
  has_many :reviews, dependent: :destroy
  # if user gets deleted, all reviews associated with user is also deleted 
end
