class RegisterSearch < ActiveRecord::Base
	has_many :documents, inverse_of: :register_search, dependent: :destroy
end
