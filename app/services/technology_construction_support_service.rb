class TechnologyConstructionSupportService

  def self.get_all
    return TechnologyConstructionSupport.select('id, name')
  end

end