class TechnologyConstructionSupplyChainService

    def self.get_all
        return TechnologyConstructionSupplyChain.select('id, name')
    end

end