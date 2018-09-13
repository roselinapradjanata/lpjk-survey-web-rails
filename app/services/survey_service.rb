class SurveyService

  def self.get_form
    company_categories = CompanyCategoryService.get_all
    company_types = CompanyTypeService.get_all
    construction_product_types = ConstructionProductTypeService.get_all
    construction_project_costs = ConstructionProjectCostService.get_all
    technology_construction_assessments = TechnologyConstructionAssessmentService.get_all
    technology_construction_benefits = TechnologyConstructionBenefitService.get_all
    technology_construction_categories = TechnologyConstructionCategoryService.get_all
    technology_construction_costs = TechnologyConstructionCostService.get_all
    technology_construction_human_resources = TechnologyConstructionHumanResourceService.get_all
    technology_construction_innovation_categories = TechnologyConstructionInovationCategoryService.get_all
    technology_construction_innovation_origins = TechnologyConstructionInovationOriginService.get_all
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
    return {
      company_categories: company_categories,
      company_types: company_types,
      construction_product_types: construction_product_types,
      construction_project_costs: construction_project_costs,
      technology_construction_assessments: technology_construction_assessments,
      technology_construction_benefits: technology_construction_benefits,
      technology_construction_categories: technology_construction_categories,
      technology_construction_costs: technology_construction_costs,
      technology_construction_human_resources: technology_construction_human_resources,
      technology_construction_innovation_categories: technology_construction_innovation_categories,
      technology_construction_innovation_origins: technology_construction_innovation_origins,
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
    }
  end

  def self.get_all(company_id)
    return Company.find(company_id).surveys
  end

  def self.get_survey(id)
    return Survey.find(id)
  end

  def self.create_survey(company_id, new_survey)
    survey = Survey.new
    survey.company_id = company_id
    survey.construction_product_type = new_survey[:construction_product_type]
    survey.technology_construction_applied = new_survey[:technology_construction_applied]
    survey.construction_project = new_survey[:construction_project]
    survey.construction_project_date = new_survey[:construction_project_date]
    survey.construction_project_cost = new_survey[:construction_project_cost]
    survey.technology_construction_stage = new_survey[:technology_construction_stage]
    survey.technology_construction_type = new_survey[:technology_construction_type]
    survey.technology_construction_origin = new_survey[:technology_construction_origin]
    survey.technology_construction_owner = new_survey[:technology_construction_owner]
    survey.technology_construction_category = new_survey[:technology_construction_category]
    survey.technology_construction_primary_type = new_survey[:technology_construction_primary_type]
    survey.technology_construction_benefit = new_survey[:technology_construction_benefit]
    survey.technology_construction_all_benefits = new_survey[:technology_construction_all_benefits]
    survey.technology_construction_cost = new_survey[:technology_construction_cost]
    survey.technology_construction_success_factor = new_survey[:technology_construction_success_factor]
    survey.technology_construction_all_success_factors = new_survey[:technology_construction_all_success_factors]
    survey.technology_construction_obstacle = new_survey[:technology_construction_obstacle]
    survey.technology_construction_all_obstacles = new_survey[:technology_construction_all_obstacles]
    survey.technology_construction_human_resource = new_survey[:technology_construction_human_resource]
    survey.technology_construction_support = new_survey[:technology_construction_support]
    survey.technology_construction_supply_chain = new_survey[:technology_construction_supply_chain]
    survey.technology_construction_supply_chain_origin = new_survey[:technology_construction_supply_chain_origin]
    survey.technology_construction_innovation_origin = new_survey[:technology_construction_innovation_origin]
    survey.technology_construction_innovation_category = new_survey[:technology_construction_innovation_category]
    survey.technology_construction_assessment = new_survey[:technology_construction_assessment]
    survey.technology_construction_level = new_survey[:technology_construction_level]
    survey.save

    return {
        survey_id: survey.id,
        message: "Survey successfully saved!"
    }
  end

end
