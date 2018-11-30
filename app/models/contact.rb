class Contact < ApplicationRecord
    has_many :events, dependent: :destroy
    validates :last, presence: true, length: {minimum: 2}
    validates :first, presence: true, length: {minimum: 2}
    validates :address,presence: true, length: {minimum: 8}
    validates :home,  numericality: { only_integer: true }, length: { is: 10 }, allow_blank: true
    validates :cell,  numericality: { only_integer: true }, length: { is: 10 }, allow_blank: true
    validates :home, numericality: { only_integer: true }, length: { is: 10 }, allow_blank: true
    
   
end
