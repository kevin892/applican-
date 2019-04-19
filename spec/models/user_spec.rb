require 'rails_helper'

describe User do
  before(:each) do
    @user = User.create!(first_name: "Kevin", last_name: "Ruggiero", email: "kevinbruggiero@gmasil.com", linkedin: "linkedidn.com", github: "githdub.com")
  end

  it 'can be created' do
    expect(@user).to be_valid
end
    it 'has a full_name instance method' do
    expect(@user.full_name).to eq("Kevin Ruggiero")
  end
end
