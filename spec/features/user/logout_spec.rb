require "rails_helper"

RSpec.feature "Logout", :type => :feature do
  let(:user) { create(:user) }

  scenario 'user logs out', js: false do
  end
end
