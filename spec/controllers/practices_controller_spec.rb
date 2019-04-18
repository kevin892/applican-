require 'rails_helper'

RSpec.describe PracticesController, type: :controller do

      context 'GET #index' do
        it 'returns a sucesss response' do
          expect(response).to be_successful
        end
    end

    context "GET #show" do
      it 'returns a success response' do
        practice = Practice.create!(question: 'What is a class?')
        get :show, params: { id: practice.to_param }
        expect(response).to be_successful
      end
    end

end
