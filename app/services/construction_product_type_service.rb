class ConstructionProductTypeService

    def self.get_all
        return ConstructionProductType.select('id, name')
    end

end