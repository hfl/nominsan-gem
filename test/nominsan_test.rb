require "test_helper"

class NominsanTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Nominsan::VERSION
  end

  def test_checkip
    assert_equal "内蒙古大学", Nominsan.checkip("202.207.7.57")
  end
  
  def test_checkip_with_no
    assert_equal "no", Nominsan.checkip("1.1.1.1") 
  end
  
end
