class Keyphrase < ApplicationRecord
  belongs_to :article, class_name: :Article, foreign_key: :content_id
  validates :name, :content_id, :score, presence: true
  validates :score, numericality: {less_than_or_equal_to: Settings.keyphrase.max_score}
end
