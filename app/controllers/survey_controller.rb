class SurveyController < ApplicationController

	def index
    company_categories = CompanyCategoryService.get_all
    company_types = CompanyTypeService.get_all
    construction_product_types = ConstructionProductTypeService.get_all
    construction_project_costs = ConstructionProjectCostService.get_all
    technology_construction_assessments = TechnologyConstructionAssessmentService.get_all
    technology_construction_benefits = TechnologyConstructionBenefitService.get_all
    technology_construction_categories = TechnologyConstructionCategoryService.get_all
    technology_construction_costs = TechnologyConstructionCostService.get_all
    technology_construction_human_resources = TechnologyConstructionHumanResourceService.get_all
    technology_construction_inovation_categories = TechnologyConstructionInovationCategoryService.get_all
    technology_construction_inovation_origins = TechnologyConstructionInovationOriginService.get_all
    technology_construction_levels = TechnologyConstructionLevelService.get_all
    technology_construction_obstacles = TechnologyConstructionObstacleService.get_all
    technology_construction_origins = TechnologyConstructionOriginService.get_all
    technology_construction_owners = TechnologyConstructionOwnerService.get_all
    technology_construction_primary_types = TechnologyConstructionPrimaryTypeService.get_all
    technology_construction_stages = TechnologyConstructionStageService.get_all
    technology_construction_success_factors = TechnologyConstructionSuccessFactorService.get_all
    technology_construction_supply_chain_origins = TechnologyConstructionSupplyChainOriginService.get_all
    technology_construction_supply_chains = TechnologyConstructionSupplyChainService.get_all
    technology_construction_supports = TechnologyConstructionSupportService.get_all
    technology_construction_types = TechnologyConstructionTypeService.get_all
    return render json: {
      company_categories: company_categories,
      company_types: company_types,
      construction_product_types: construction_product_types,
      construction_project_costs: construction_project_costs,
      technology_construction_assessments: technology_construction_assessments,
      technology_construction_benefits: technology_construction_benefits,
      technology_construction_categories: technology_construction_categories,
      technology_construction_costs: technology_construction_costs,
      technology_construction_human_resources: technology_construction_human_resources,
      technology_construction_inovation_categories: technology_construction_inovation_categories,
      technology_construction_inovation_origins: technology_construction_inovation_origins,
      technology_construction_levels: technology_construction_levels,
      technology_construction_obstacles: technology_construction_obstacles,
      technology_construction_origins: technology_construction_origins,
      technology_construction_owners: technology_construction_owners,
      technology_construction_primary_types: technology_construction_primary_types,
      technology_construction_stages: technology_construction_stages,
      technology_construction_success_factors: technology_construction_success_factors,
      technology_construction_supply_chain_origins: technology_construction_supply_chain_origins,
      technology_construction_supply_chains: technology_construction_supply_chains,
      technology_construction_supports: technology_construction_supports,
      technology_construction_types: technology_construction_types
		}, status: :ok
	end

end