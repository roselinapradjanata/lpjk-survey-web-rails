class TechnologyConstructionBenefitService

    def self.get_all
        return TechnologyConstructionBenefit.select('id, name')
    end

end
