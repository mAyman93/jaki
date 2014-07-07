class Book < ActiveRecord::Base
    belongs_to :library
    belongs_to :author

    validates :name , presence: true
end
