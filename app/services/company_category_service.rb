class CompanyCategoryService

	def self.get_all
		return CompanyCategory.select('id, name')
	end

end