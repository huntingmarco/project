require 'rails_helper'

RSpec.describe ProjectTasksController, type: :controller do
    context 'GET #index' do
        it 'returns a success response' do
            get :index
            expect(response).to be_success
        end
        it 'returns a success response' do
            get :new
            expect(response).to be_success
        end
    end

   
end