class CompanyTypeService

    def self.get_all
        return CompanyType.select('id, name')
    end

end