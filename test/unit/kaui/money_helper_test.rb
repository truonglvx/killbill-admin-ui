require 'test_helper'

class Kaui::MoneyHelperTest < ActiveSupport::TestCase

  include Kaui::MoneyHelper

  test 'includes most common currencies' do
    assert_includes currencies, 'USD'
    assert_includes currencies, 'BTC'
    assert_includes currencies, 'EUR'
  end

  test 'can list currencies' do
    assert_equal 173, currencies.size
  end
end
