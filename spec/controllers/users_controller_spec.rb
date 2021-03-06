require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    context 'GET #index' do
      it 'returns a sucesss response' do
        expect(response).to be_successful
      end
  end

  context "GET #show" do
    it 'returns a success response' do
      user = User.create!(first_name: "Kevin", last_name: "Ruggiero", email: "kevinbruggiero@gmasil.com", linkedin: "linkedidn.com", github: "githdub.com")
      get :show, params: { id: user.to_param }
      expect(response).to be_successful
    end
  end
end
