class Category < ActiveRecord::Base
  attr_accessible :name, :category_tokens

  validates :name, presence: true

  has_many :categorizations
  has_many :restaurants, through: :categorizations


  attr_reader :category_tokens

  def category_tokens=(c_ids)
    self.ids = ids.split(",")
  end

end
