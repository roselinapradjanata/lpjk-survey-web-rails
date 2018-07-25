class TechnologyConstructionSuccessFactorService

    def self.get_all
        return TechnologyConstructionSuccessFactor.select('id, name')
    end

end