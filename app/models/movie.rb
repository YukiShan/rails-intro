class Movie < ActiveRecord::Base
  def self.all_ratings
  	array = Array.new
  	self.select("rating").uniq.each {|index| array.push(index.rating)}
  	array.sort.uniq
  end
end
