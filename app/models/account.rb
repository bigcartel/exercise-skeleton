class Account < ApplicationRecord
  validates :subdomain, presence: true, uniqueness: true
  validates :owner_email, presence: true
  validates :plan, presence: true

  belongs_to :plan
  has_many :orders
end
