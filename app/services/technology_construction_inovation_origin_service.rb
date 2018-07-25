class TechnologyConstructionInovationOriginService

    def self.get_all
        return TechnologyConstructionInovationOrigin.select('id, name')
    end

end