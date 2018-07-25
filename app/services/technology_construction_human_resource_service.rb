class TechnologyConstructionHumanResourceService

    def self.get_all
        return TechnologyConstructionHumanResource.select('id, name')
    end

end