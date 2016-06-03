require 'test_helper'

class HouseTest < Minitest::Test
  def test_there_are_houses
    assert_instance_of Array, House.all
  end

  def test_house_can_be_found
    targaryen = House.find('Targaryen')
    assert_instance_of House, targaryen
    assert_equal targaryen.name, 'Targaryen'
  end

  def test_there_are_a_lot_of_houses
    houses = House.all
    assert houses.count > 3
  end
end
