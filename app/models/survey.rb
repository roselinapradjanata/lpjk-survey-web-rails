class Survey < ApplicationRecord
  belongs_to :company
  serialize :construction_product_type_surveys
  serialize :technology_construction_stage_surveys
  serialize :technology_construction_cost_surveys
  serialize :technology_construction_human_res_surveys
  serialize :technology_construction_support_surveys
end
