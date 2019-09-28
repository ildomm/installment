class Contract < ActiveRecord::Base
  has_many :delayed_installments, dependent: :destroy

  validates :customer_name, presence: true, length: { minimum: 3 }
  validates :external_id, presence: true, uniqueness: true, length: { minimum: 3 }
end
