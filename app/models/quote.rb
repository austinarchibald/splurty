class Quote < ActiveRecord::Base
  validates :saying, :presence => true, :length => { :maximum => 400, :minimum => 5 }
  validates :author, :presence => true, :length => { :maximum => 40, :minimum => 3 }
end