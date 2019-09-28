class BankSlip < ActiveRecord::Base
  belongs_to :delayed_installment, validate: true

  validates :due_date, presence: true
  validates :value, presence: true
end
