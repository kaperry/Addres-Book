class Event < ApplicationRecord
  belongs_to :contact
  accepts_nested_attributes_for :contact
end
