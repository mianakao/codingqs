require 'spec_helper'

describe "Questions" do
  describe "GET /questions" do
    
    #fixtures :languages
    
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit questions_path
      click_link "New Question"
      fill_in "Qtext", with: "A question"
      click_button "Create Question"
      
      # error_message = "Question cannot be blank"
      # page.should have_content(error_message)
      page.should have_content "successful"
      # get questions_path
      # response.status.should be(200)
    end
  end
end
