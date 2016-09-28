class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable

  belongs_to :role
  before_create :set_default_role
  # or
  # before_validation :set_default_role

  private
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
end
