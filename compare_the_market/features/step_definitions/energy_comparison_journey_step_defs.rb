When("I go to the compare the market energy comparion website") do
  energy_comparison.energy_comparison_home
end

Given("I enter a postcode of {string}") do |postcode|
  energy_comparison.your_supplier_postcode.set(postcode)
end

Given("I click find Postcode button") do
  energy_comparison.your_supplier_postcode_button.click
end

Then("I click next button to proceed to Your Enegery section") do
  energy_comparison.your_supplier_next_button.click
  sleep(3)
end

When("I am on step Your Energy page") do
  expect(page).to have_content('So that we can work out how much energy you might use in the future, please complete the details below from a recent bill.')
end

When("I click next button to proceed to Your Details section") do
  energy_comparison.your_energy_next_button.click
end

When("I am on step Your Details page") do
  expect(page).to have_content('Your Preferences')
end

When("I add {int} for electricty usage") do |electricity_number|
  energy_comparison.your_energy_electricity_usage.set(electricity_number)
  sleep(3)
end

When("I am shown your Gas usage sub form") do
  expect(page).to have_content('Gas')
end

When("I add {int} for gas usage") do  |gas|
  energy_comparison.your_energy_gas_usage.set(gas)
end

When("I click Fixed Tarrif option from tarrif") do
  energy_comparison.your_prefernces_fixed_tarrif.click
end

When("I click monthly direct debit option from payment method") do
  energy_comparison.your_prefences_monthly_direct_debit.click
end

When("I enter {string} for email address") do |email|
  energy_comparison.your_prefences_email.set(email)
end

When("I accept t{string}s checkbox") do |string|
  energy_comparison.your_prefences_terms_checkbox.click
end

When("I click go to prices button") do
  energy_comparison.your_prefences_next_button.click
  sleep(10)
end

Then("I should see {string}") do |string|
  expect(page).to have_content('Your results')
end




