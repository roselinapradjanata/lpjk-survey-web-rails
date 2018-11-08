class TechnologyConstructionCostService

    def self.get_all
        return TechnologyConstructionCost.select('id, name')
    end

end
