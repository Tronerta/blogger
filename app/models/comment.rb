class Comment < ApplicationRecord
  belongs_to :article

  validates_length_of :name, maximum: 30
  validates_length_of :body, maximum: 256
end
