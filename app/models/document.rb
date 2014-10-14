class Document < ActiveRecord::Base
  # change to article
  belongs_to :register_search, inverse_of: :documents
end
