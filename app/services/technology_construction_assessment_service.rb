class TechnologyConstructionAssessmentService

    def self.get_all
        return TechnologyConstructionAssessment.select('id, name')
    end

end
