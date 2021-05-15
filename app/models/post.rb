class Post < ApplicationRecord
  
  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true
  before_save :censurate_word

  def censurate_word
  self.content = self.content.gsub("divulgar", "")
  end
end
