class Article < ApplicationRecord
  has_many :keyphrases, foreign_key: :content_id, dependent: :destroy
  after_create :save_keyphrases
  validates :title, :url, :content, presence: true

  def save_keyphrases
    keyphrases = YahooKeyphraseService.new(content).execute
    Keyphrase.transaction do
      keyphrases.each do |keyphrase|
        self.keyphrases.create!(
          name: keyphrase['Keyphrase'],
          score: keyphrase['Score'].to_i
        )
      end
    end
  end
end
