class IntellectualPropertyRightService

  def self.get_all
    return IntellectualPropertyRight.select('id, name')
  end

end
