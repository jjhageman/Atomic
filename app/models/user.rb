class User < ActiveRecord::Base
  has_one :profile, :dependent => :destroy
  accepts_nested_attributes_for :profile
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_attributes

  before_create :create_default_profile

  private

  def create_default_profile
    p = self.profile || create_profile
    p.create_display_setting(:header_font => 'Arial', :header_font_size => 18, :body_font => 'Arial')
    p.create_links_list
    p.questions = Question.limit(3).all
  end
end
