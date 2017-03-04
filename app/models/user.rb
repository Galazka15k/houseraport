class User < ActiveRecord::Base
	attr_accessor :remember_token
	has_secure_password
	has_many :posts, dependent: :destroy
	has_many :assignments
	has_many :roles, through: :assignments
  has_many :rozliczenies
  has_many :userfuns
	belongs_to :function

	before_save { self.email = email.downcase }
	validates :imie,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :nazwisko, presence: true, length: { maximum: 255 }
  validates :sort, presence: true, length: { maximum: 1 }



	scope :sortuj, lambda{order ("users.imie ASC")}

	def User.new_token
    SecureRandom.urlsafe_base64
  end

    # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end



    class << self
    # Returns the hash digest of the given string.
    def digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end

    # Returns a random token.
    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

    def forget
    update_attribute(:remember_digest, nil)
  end

  def role?(role)
  roles.any? { |r| r.name.underscore.to_sym == role }
end
end
