class TechnologyConstructionLevelService

  def self.get_all
    return TechnologyConstructionLevel.select('id, name')
  end

end
