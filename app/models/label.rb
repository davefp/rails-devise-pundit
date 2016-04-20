class Label < ActiveRecord::Base
  has_many :labels_users
  has_many :users, through: :labels_users


  validates :name, uniqueness: { scope: :colour }
  validates_format_of :colour, with: /\A#([0-9a-fA-F]){6}\z/
end
