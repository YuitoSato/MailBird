class Article < ApplicationRecord
  has_many :keyphrases, foreign_key: :content_id
end
