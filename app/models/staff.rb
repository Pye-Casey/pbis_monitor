class Staff < ApplicationRecord

	before_save { email.downcase! }

  validates :fName,				presence: true, length: { maximum: 20 }
  validates :lName, 			presence: true, length: { maximum: 20 }
  validates :gradeTaught, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

	def full_name_last
		"#{lName}, #{fName}"
	end
	def staff_member_info
		"#{lName}, #{fName} - Grade:#{gradeTaught}"
	end

end
