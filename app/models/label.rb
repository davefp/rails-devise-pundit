class Label < ActiveRecord::Base
  has_and_belongs_to_many :users


  validates :name, uniqueness: { scope: :colour }
  validates_format_of :colour, with: /\A#([0-9a-fA-F]){6}\z/
end
