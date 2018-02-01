require_relative 'base_page'

module Pages
  def energy_comparison
    @energy_comparison ||= PageObjects::Energycomparison.new
  end

end

World(Pages)