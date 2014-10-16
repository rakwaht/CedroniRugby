class Teams < ActiveRecord::Base
  attr_accessible :games, :name, :point, :win, :lose, :tie, :point_given, :point_made, :try
end
