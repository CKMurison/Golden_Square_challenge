require "password_checker"

RSpec.describe PasswordChecker do
	context "If password == 8 characters" do 
		it "Returns true" do
    	password_checker = PasswordChecker.new
    	result = password_checker.check("password")
    	expect(result).to eq true
  	end
	end	
	context "If password > 8 characters" do
		it "Returns true" do
			password_checker = PasswordChecker.new
			result = password_checker.check("sausageees")
			expect(result).to eq true
		end
	end
	context "If password < 8 charcters" do
		it "Returns fail" do
			password_checker = PasswordChecker.new
			expect { password_checker.check("toe") }.to raise_error "Invalid password, must be 8+ characters."
		end
	end
end