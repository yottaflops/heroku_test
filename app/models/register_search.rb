class RegisterSearch < ActiveRecord::Base
  has_many :documents, inverse_of: :register_search, dependent: :destroy
  belongs_to :user, inverse_of: :register_searches
end
