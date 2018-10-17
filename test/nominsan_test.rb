require "test_helper"

class NominsanTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Nominsan::VERSION
  end

  def test_checkip
    assert_equal "内蒙古大学", Nominsan.checkip("202.207.7.1")
  end
  
  def test_mongolian_sort
    assert_equal ["ᠠ","ᠡ","ᠢ","ᠨᠣᠮ ᠤ","ᠰᠠᠩ"], Nominsan.mongolian_sort("ᠨᠣᠮ ᠤ ᠰᠠᠩ ᠡ ᠢ ᠠ") 
  end
end
