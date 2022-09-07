class Customer < ActiveRecord::Base
    has_many :providers
    has_many :services
end