class Profile < ActiveRecord::Base
  belongs_to :user

  def full_name
    "#{first_name} #{last_name}"
  end

  def first_or_email
    first_name || user.email
  end
end
