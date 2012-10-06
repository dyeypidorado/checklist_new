class Inspector < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  include Extensions::UUID
  devise :database_authenticatable, :trackable,  #, :registerable, :recoverable, :rememberable, :validatable
         :authentication_keys => [:login]

  attr_accessor :login

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :username, :login # , :remember_me

  # attr_accessible :title, :body
  has_many :reports
  #has_many :answers, through: :reports

  protected
    def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end
end
