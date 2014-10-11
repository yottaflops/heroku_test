class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  has_many :register_searches, inverse_of: :user, dependent: :destroy

  validates_uniqueness_of :email, case_sensitive: false, allow_blank: true, if: :email_changed?
  validates_format_of :email, with: Devise.email_regexp, allow_blank: true, if: :email_changed?
  validates_presence_of :password, on: :create
  validates_confirmation_of :password, on: :create
end
