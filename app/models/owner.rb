class Owner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  validates :name, presence: true

  has_many :restaurants
  has_many :reservations, through: :restaurants

  has_many :back_pockets
  has_many :back_pocket_restaurants, through: :back_pockets, source: :restaurant

  def admin?
    if self.role == "admin"
      true
    else
      false
    end
  end

  def user?
    if self.role == "user"
      true
    else
      false
    end
  end

end
