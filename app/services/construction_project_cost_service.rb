class ConstructionProjectCostService

  def self.get_all
    return ConstructionProjectCost.select('id, name')
  end

end