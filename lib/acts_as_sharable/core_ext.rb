String.class_eval do
  def to_gab
    "Gab #{self}".strip
  end
end