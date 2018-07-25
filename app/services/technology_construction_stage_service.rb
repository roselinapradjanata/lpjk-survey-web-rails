class TechnologyConstructionStageService

    def self.get_all
        return TechnologyConstructionStage.select('id, name')
    end

end