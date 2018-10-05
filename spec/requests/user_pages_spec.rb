require 'rails_helper'
require 'spec_helper'

describe 'User pages' do
  
  describe 'signup page' do
    subject { page }
    before { visit signup_path }

    it { should have_title(full_title('Sign up')) }
    it { should have_content('Sign up') }
  end

end
