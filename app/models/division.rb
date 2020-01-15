class Division < ApplicationRecord
    has_and_belongs_to_many(:projects)
  has_many :employees, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100

  before_save(:titleize_division)

private
  def titleize_division
    self.name = self.name.titleize
  end
end
