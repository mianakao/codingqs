require 'spec_helper'

describe Question do  
  it "requires a question" do
     subject.should_not be_valid
     
     subject.qtext = "Testing..."
     
     subject.should be_valid
  end
end
