class Entry < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body
end
