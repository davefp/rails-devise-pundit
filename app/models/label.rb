class Label < ActiveRecord::Base
  validates :name, uniqueness: { scope: :colour }
end
