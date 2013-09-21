class Book < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  scope :recent, lambda { |qty| order("created_at DESC").first(qty) }

end
