class Keyphrase < ApplicationRecord
  belongs_to :article, class_name: :Article, foreign_key: :content_id
end
