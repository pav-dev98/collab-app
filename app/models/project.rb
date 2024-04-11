class Project < ApplicationRecord
  #attributes
  attribute :name,:string
  attribute :description,:string
  attribute :technologies, :string
  #validates
  validates :name,presence: true
  validates :description, presence: true
  validates :technologies, presence: true, length: {minimum: 1}
  #serialize
  serialize :technologies, type: Array, coder: JSON
end
