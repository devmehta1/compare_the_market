module PageObjects
  class BasePage
    include Capybara::DSL

    def self.element(element_name, options = {})
      define_method element_name.to_s do |*args|
        find yield(*args), options
      end
    end


  end
end