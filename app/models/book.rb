class Book < ApplicationRecord
    belongs_to :author

    validates :title, presence: true

    scope :filter_by_title, ->(title) { where(title: title) }
end
