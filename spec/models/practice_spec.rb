require 'rails_helper'

RSpec.describe Practice, type: :model do
    before(:each) do
      @practice = Practice.new
    end

    it 'can be created' do
      expect(@practice).to be_valid
    end
  end
