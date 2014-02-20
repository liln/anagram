require "test_helper"

class AnagrammTest < Minitest::Unit::TestCase
  def test_solve
    a = Anagramm.new("iceman","cinema")
    assert a.solve

    b = Anagramm.new("iceman","noticeman")
    assert !b.solve

    c = Anagramm.new("c", "")
    assert !c.solve

    d = Anagramm.new("iceman","iceman")
    assert !d.solve
  end
end
