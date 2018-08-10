class TechnologyConstructionPrimaryTypeService

    def self.get_all
        return TechnologyConstructionPrimaryType.select('id, name')
    end

end
