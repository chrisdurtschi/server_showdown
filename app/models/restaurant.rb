class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :description, :name, :phone, :state, :zip
end
