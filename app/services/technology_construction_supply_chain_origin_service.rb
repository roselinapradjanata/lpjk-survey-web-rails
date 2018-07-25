class TechnologyConstructionSupplyChainOriginService

    def self.get_all
        return TechnologyConstructionSupplyChainOrigin.select('id, name')
    end

end