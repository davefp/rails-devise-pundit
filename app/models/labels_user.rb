class LabelsUser < ActiveRecord::Base
  validates_uniqueness_of :user, scope: :label

  belongs_to :user
  belongs_to :label
end
