class User < ApplicationRecord
<<<<<<< HEAD
  belongs_to :Booking
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> 2ece12247d26c7828d4a15e66ad01876c0a0b9e0
end
