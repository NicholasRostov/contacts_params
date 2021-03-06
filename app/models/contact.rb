class Contact < ApplicationRecord
  has_many :groups
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

def time
created_at.strftime("%b %d, %Y")
  end
def full_name
 "#{first_name} #{last_name}"
  end

def jap_phone
  "+81 #{phone_number}"
  end

end
