require 'rails_helper'
require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    subject { page }
    before { visit root_path }

    it { should have_title( full_title('') ) }
    it { should have_content('Sample App') }
    it { should_not have_title( full_title('Home')) }
  end

  describe "Help page" do
    subject { page }
    before { visit help_path }

      it { should have_title(full_title('Help')) }
      it { should have_content('Help') }
  end

  describe "About page" do
    subject { page }
    before { visit about_path }
    
      it { should have_title(full_title('About Us')) }
      it { should have_content('About Us') }
    
  end

  describe "Contact page" do
    subject { page }
    before { visit contact_path }

      it { should have_title(full_title('Contact')) }
      it { should have_content('Contact') }
  end

end