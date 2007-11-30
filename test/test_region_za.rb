require File.dirname(__FILE__) + '/test_helper'
require 'holidays/za'

class ZATests < Test::Unit::TestCase
  def test_za
    {Date.civil(2007,1,1) => 'New Year\'s Day', 
     Date.civil(2007,3,21) => 'Human Rights Day', 
     Date.civil(2007,4,6) => 'Good Friday',
     Date.civil(2007,4,9) => 'Family Day',
     Date.civil(2007,4,27) => 'Freedom Day',
     Date.civil(2007,5,1) => 'Workers Day',
     Date.civil(2007,6,16) => 'Youth Day',
     Date.civil(2007,8,9) => 'National Women\'s Day',
     Date.civil(2007,9,24) => 'Heritage Day',
     Date.civil(2007,12,16) => 'Day of Reconciliation',
     Date.civil(2007,12,25) => 'Christmas Day',
     Date.civil(2007,12,26) => 'Day of Goodwill'}.each do |date, name|
      assert_equal name, Holidays.on(date, :za, :informal)[0][:name]
    end
  end
end
