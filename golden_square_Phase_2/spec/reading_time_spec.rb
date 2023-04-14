#file: reading_time_spec.rb

require "reading_time"

RSpec.describe "reading_time" do
    it "calculates the reading time for a short text" do
        text = "I love calculator."
        expect(reading_time(text)).to eq("1 minute read")
    end
end