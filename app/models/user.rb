class User < ActiveRecord::Base
  has_many :register_searches, inverse_of: :user, dependent: :destroy
end
