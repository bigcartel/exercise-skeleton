module PlanHelpers
  def gold_plan
    Plan.find_by(name: 'Gold')
  end

  def platinum_plan
    Plan.find_by(name: 'Platinum')
  end

  def diamond_plan
    Plan.find_by(name: 'Diamond')
  end
end
