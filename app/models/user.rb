class User < ApplicationRecord

  has_secure_password

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  FORBIDDEN_USERNAMES = ['littlebopeep','humptydumpty','marymary']

  validates :first_name, :presence => true,
												 :length => { :maximum => 25 }
  validates :last_name, :presence => true,
                        :length => { :maximum => 50 }
  validates :username, :length => { :within => 3..25 },
                       :uniqueness => true
  validates :email, :presence => true,
                    :length => { :maximum => 100 },
                    :format => EMAIL_REGEX,
                    :confirmation => true

  validate :username_is_allowed

  scope :sorted, lambda { order('last_name ASC, first_name ASC')}

  def name
    "#{first_name} #{last_name}"
  end

  private
    def username_is_allowed
      if FORBIDDEN_USERNAMES.include?(username)
        errors.add(:username, "has been restricted from use.")
      end
    end

end
