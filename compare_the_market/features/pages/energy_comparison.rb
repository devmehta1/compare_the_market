module PageObjects
  class Energycomparison < BasePage
    element(:your_supplier_postcode)                      {' input[name="your-postcode"]'}
    element(:your_supplier_postcode_button)               {' #find-postcode'}
    element(:your_supplier_next_button)                   {' #goto-your-supplier-details' }
    element(:your_energy_next_button)                     {' #goto-your-energy'}
    element(:your_energy_electricity_usage)               {' #electricity-usage'}
    element(:your_energy_gas_usage)                       {' #gas-usage'}
    element(:your_prefernces_fixed_tarrif)                {' span[class="icon fixed-rate-1"]'}
    element(:your_prefences_monthly_direct_debit)         {' span[class="icon annual-1"'}
    element(:your_prefences_email)                        {' #Email'}
    element(:your_prefences_terms_checkbox)               {' #terms-label'}
    element(:your_prefences_next_button)                  {' #email-submit'}

    def energy_comparison_home
      visit ('https://energy.comparethemarket.com/energy/v2/?AFFCLIE=TSTT')
    end


  end
end