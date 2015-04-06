class Post < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :price, :itemtype
end
