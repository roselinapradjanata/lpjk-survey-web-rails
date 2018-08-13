class Survey < ApplicationRecord
  belongs_to :company
  has_many :construction_product_type_surveys
  has_many :technology_construction_stage_surveys
  has_many :technology_construction_cost_surveys
  has_many :technology_construction_human_res_surveys
  has_many :technology_construction_support_surveys
end
