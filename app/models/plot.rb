class Plot < ApplicationRecord
  has_many :deceaseds, dependent: :destroy
end
