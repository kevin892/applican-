require 'rails_helper'

RSpec.describe NotesController, type: :controller do

    context 'GET #index' do
      it 'returns a sucesss response' do
        expect(response).to be_successful
    end
  end
end
