class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true

	has_many :books

	scope :by_name, lambda { |name| where("name LIKE '%#{name}%'") }
	scope :by_last_name, lambda { |last_name| where("last_name LIKE '%#{last_name}%'") }
	scope :by_period_age, 
		lambda { |min_age, max_age| where(age: (min_age..max_age)) }
end
