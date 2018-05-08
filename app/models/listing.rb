class Listing < ApplicationRecord
  mount_uploader :image, ImageUploader


  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :user, class_name: 'User'
  has_many :orders, class_name: 'User'
  belongs_to :category

  resourcify

  searchkick word_middle: [:name, :description]

  def search_data
    {
      name: name,
      description: description,
    }

  end

end
