class Restaurant < ActiveRecord::Base
  attr_accessible :name, :description, :phone_number, :photo,
                  :street, :apt, :city, :state, :zip_code,
                  :category_ids, :category_tokens,
                  :latitude, :logitude
  
  mount_uploader :photo, PhotoUploader
  
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :photo, presence: true


  belongs_to :owner
  has_many :reservations
  has_many :categorizations
  has_many :categories, through: :categorizations

  # this attr_reader is the getter method for the category_tokens setter method below.
  attr_reader :category_tokens

  def category_tokens=(ids)
    self.category_ids = ids.split(",")
  end

  def address
  	[street, apt, city, state, zip_code].join(', ')
  end

  geocoded_by :address
  after_validation :geocode


  def self.search(search)
    if search
      includes(:categories).where('categories.name LIKE ?', "%#{search}%")
    else
      find(:all)
    end
  end

end
