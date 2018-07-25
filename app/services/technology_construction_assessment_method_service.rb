class TechnologyConstructionAssessmentMethodService

    def self.get_all
        return TechnologyConstructionAssessmentMethod.select('id, name')
    end

end