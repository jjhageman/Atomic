class User < ActiveRecord::Base
  has_one :profile, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  before_create :create_default_profile

  private

  def create_default_profile
    p=create_profile
    p.create_display_setting(:header_font => 'Arial', :header_font_size => 18, :body_font => 'Arial')
    p.questions = Question.limit(3).all
  end
end
