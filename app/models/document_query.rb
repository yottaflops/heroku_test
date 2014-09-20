class DocumentQuery < ActiveRecord::Base
  has_many :Documents, dependent: :destroy
end
