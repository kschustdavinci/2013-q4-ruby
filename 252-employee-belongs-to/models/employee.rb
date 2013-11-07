class Employee < ActiveRecord::Base
  belongs_to :company, class_name: "Company", foreign_key: "company_id"
  validates :first_name, presence: true
  validates :last_name, presence: true
end
