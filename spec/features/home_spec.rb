require 'rails_helper'

feature "visit the homepage" do
  scenario "user see welcome text" do
   	visit root_path
   	expect(page).to have_text("About me")
  end
   scenario "user see other text" do
   	visit root_path
   	expect(page).to have_text("Request CV")
  end
end

RSpec.describe Projecto do
	describe "#num_of_projects" do
		it "returns an int" do
			expect(subject.num_of_projects).to be_a(Numeric)
		end
	end

	describe "#feed" do
		context "when the dog is hungry" do
			subject { described_class.new(hunger_level: 7)}
			it "is no longer hungry" do
				subject.feed
				expect(subject).to_not be_hungry
			end	
		end
	end

	describe '#hungry?' do
		context'when hunger_level is more than 5' do
			subject { described_class.new(hunger_level: 7) }
			it "returns true " do
				expect(subject).to be_hungry
			end
		end
		context 'when hunger_level is 5 or less' do
			subject {described_class.new(hunger_level: 5)}
			it "returns false" do
				expect(subject).not_to be_hungry
			end
		end
	end
end

