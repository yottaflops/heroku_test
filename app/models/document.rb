class Document < ActiveRecord::Base
  belongs_to :register_search, inverse_of: :documents
end
