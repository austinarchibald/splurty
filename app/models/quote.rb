class Quote < ActiveRecord::Base
  validates :saying, :presence => true, :length => { :maximum => 400, :minimum => 5 }
  validates :author, :presence => true, :length => { :maximum => 40, :minimum => 3 }

  def unique_tag
    abbr = self.author.split(" ").collect do |sub_string|
      sub_string[0]
    end

    abbr.join + '#' + self.id.to_s
  end
end