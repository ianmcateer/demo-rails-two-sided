class Listing < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :user, class_name: 'User'
  has_many :orders, class_name: 'User'
  belongs_to :category

  after_create :set_boolean

  resourcify

  def self.search(search)
    where('name ILIKE ?', "%#{search}%")
    where('description ILIKE ?', "%#{search}%")
  end

  # searchkick word_middle: %i[name description]

  def search_data
    {
      name: name,
      description: description
    }
  end

  def set_boolean
    self.visible == true

  end
end
