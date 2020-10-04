class Estate < ApplicationRecord
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :station, allow_destroy: true, reject_if: :all_blank
end
