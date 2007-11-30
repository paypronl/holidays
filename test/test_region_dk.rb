require File.dirname(__FILE__) + '/test_helper'
require 'holidays/dk'

class DKTests < Test::Unit::TestCase
  def test_dk
    {Date.civil(2007,1,1) => 'Nytårsdag', 
     Date.civil(2007,2,18) => 'Fastelavn', 
     Date.civil(2007,4,9) => 'Danmarks besættelse',
     Date.civil(2007,4,16) => 'Dronningens fødselsdag',
     Date.civil(2007,4,5) => 'Skærtorsdag',
     Date.civil(2007,4,6) => 'Langfredag',
     Date.civil(2007,4,8) => 'Påskedag',
     Date.civil(2007,4,9) => '2. påskedag',
     Date.civil(2007,5,1) => 'Arbejdernes kampdag',
     Date.civil(2007,5,4) => 'Store Bededag',
     Date.civil(2007,5,17) => 'Kristi Himmelfartsdag',
     Date.civil(2007,5,27) => 'Pinsedag',
     Date.civil(2007,5,28) => '2. Pinsedag',
     Date.civil(2007,6,5) => 'Grundlovsdag',
     Date.civil(2007,12,24) => 'Juleaftensdag',
     Date.civil(2007,12,25) => '1. juledag',
     Date.civil(2007,12,26) => '2. juledag'}.each do |date, name|
      assert_equal name, Holidays.on(date, :dk, :informal)[0][:name]
    end
  end
end
