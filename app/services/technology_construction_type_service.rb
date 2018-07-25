class TechnologyConstructionTypeService

    def self.get_all
        return TechnologyConstructionType.select('id, name')
    end

end