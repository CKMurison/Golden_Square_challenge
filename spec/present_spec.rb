require "present"

RSpec.describe Present do
  it "Returns the contents" do
  	present = Present.new
    result = present.wrap("gift")
    expect(result).to eq "gift"
  end
  
	context "If contents has already been wrapped" do
		it "Returns fail" do
			present = Present.new
			present.wrap("gift")
			expect { present.wrap("toilet") }.to raise_error "A contents has already been wrapped."
		end
	end
	
	context "If contents is unwrapped with no contents wrapped" do
		it "Return a fail" do
			present = Present.new
			expect { present.unwrap }.to raise_error "No contents have been wrapped."
		end
	end
end