class TechnologyConstructionOriginService

    def self.get_all
        return TechnologyConstructionOrigin.select('id, name')
    end

end