class TrueClass
  def if_true
    yield
    true
  end

  def if_false
    yield
  end
end

class FalseClass
  def if_true
    yield
    false
  end

  def if_false
    yield
  end
end
