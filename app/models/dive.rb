class Dive < ApplicationRecord
  belongs_to :dive_location

  accepts_nested_attributes_for :dive_location
end
