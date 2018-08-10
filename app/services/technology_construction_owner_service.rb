class TechnologyConstructionOwnerService

    def self.get_all
        return TechnologyConstructionOwner.select('id, name')
    end

end
