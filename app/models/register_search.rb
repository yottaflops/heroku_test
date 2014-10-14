class RegisterSearch < ActiveRecord::Base
  # change to rquery
  has_many :documents, inverse_of: :register_search, dependent: :destroy
  belongs_to :user, inverse_of: :register_searches
end
