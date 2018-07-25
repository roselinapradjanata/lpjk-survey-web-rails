class TechnologyConstructionObstacleService

    def self.get_all
        return TechnologyConstructionObstacle.select('id, name')
    end

end