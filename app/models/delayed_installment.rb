class DelayedInstallment < ActiveRecord::Base
  belongs_to :contract, validate: true
  has_many :BankSlips, dependent: :destroy

  validates :due_date, presence: true
  validates :installment_index, presence: true
end
