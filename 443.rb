# QUESTION 1
# The following code uses the money Ruby library.
# First read the library documentation: https://github.com/RubyMoney/money 
# Then write comments next to each line explaining what you think the code is doing.
require "money"                          # load money library

I18n.enforce_available_locales = false   # If you don't have some locale and don't want to get a runtime error
I18n.locale = :en                        # indicate that you're using default localization from rails i18n
Money.default_currency = "USD"           # Override default currency
Money.add_rate("CAD", "USD", 0.8)        # Manually specify exchange rate

money1 = Money.new(1000)                 # Doc does not indicate what Money.new is but this is likely assigning 1000 USD, which is default currency to money1
money2 = Money.new(500, "CAD")           # Doc doesn't say but likely assigning 500 CAD to money2 variable
result = money1 + money2                 # Adding the values of money1 and converted money2 and storing in result
puts "Total: #{result}"                  # Prints result
