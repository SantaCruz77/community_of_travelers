class Post < ApplicationRecord
  validates :location, presence: true, length: { maximum: 10 }
  validates :text, presence: true, length: { maximum: 100 }
  validates :image, presence: true

  attachment :image

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
