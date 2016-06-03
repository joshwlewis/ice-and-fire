require 'test_helper'

class HouseTest < Minitest::Test
  def test_there_are_houses
    assert_instance_of Array, House.all
  end

  def test_house_can_be_found
    chorizo = House.find('Targaryen')
    assert_instance_of House, chorizo
    assert_equal chorizo.name, 'Targaryen'
  end

  def test_there_are_a_lot_of_houses
    houses = House.all
    assert houses.count > 10
  end
end
