class TechnologyConstructionCategoryService

    def self.get_all
        return TechnologyConstructionCategory.select('id, name')
    end

end
