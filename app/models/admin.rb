class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  has_many :notes
  devise :database_authenticatable, :registerable,
             :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :active
  # attr_accessible :title, :body
  attr_accessor :updating_password
  def full_name
    first_name + ' ' + last_name
  end
  def should_validate_password?
      updating_password || new_record?
  end
end
