class Profile < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos
  has_many :question_answers, :dependent => :destroy
  has_many :questions, :through => :question_answers
  accepts_nested_attributes_for :question_answers,
    :reject_if => proc { |attributes| attributes['body'].blank? }
  has_one :display_setting, :dependent => :destroy
  accepts_nested_attributes_for :display_setting
  has_one :links_list, :dependent => :destroy
  accepts_nested_attributes_for :links_list
  belongs_to :user
  
  validates :slug,
    :presence => true,
    :uniqueness => true,
    :length => 3..50,
    :format => { :with => /^[a-z0-9]+([-_][a-z0-9]+)*$/i }
  
  def to_param
    slug
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def first_or_email
    first_name || user.email
  end

  def main_image
    photos.first || Photo.new
  end  

  private

  def generate_slug
   slug = full_name.parameterize
  end
end
