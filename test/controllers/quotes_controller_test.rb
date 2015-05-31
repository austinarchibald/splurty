require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
     quote = Quote.create(:author => 'Nolan Archibald', :saying => 'Archibalds never give up.')
     get :show, :id => quote.id
     assert_response :success
  end

  test "quote show page, not found" do
    get :show, :id => 'Advice'
    assert_response :not_found
  end
end