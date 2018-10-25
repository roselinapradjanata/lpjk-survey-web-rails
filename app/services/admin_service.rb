class AdminService

  def self.get_all_surveys
    return Survey.all.to_json.gsub('\"', '"').gsub('"[', '[').gsub(']"', ']')
  end

  def self.get_all_companies
    return Company.all
  end

end
