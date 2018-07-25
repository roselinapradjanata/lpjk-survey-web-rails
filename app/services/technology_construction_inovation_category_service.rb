class TechnologyConstructionInovationCategoryService

    def self.get_all
        return TechnologyConstructionInovationCategory.select('id, name')
    end

end