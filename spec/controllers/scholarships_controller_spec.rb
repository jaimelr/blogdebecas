require 'rails_helper'

RSpec.describe ScholarshipsController do
  context '#create' do
    it 'creates a new scholarship' do
      post :create, params: { scholarship: { title: 'foo', description: 'bar', start: Date.today, end: Date.tomorrow, source: 'cat', category: 'intern', benefits: 'none' }}

      expect(Scholarship.all.count).to eq(1)
    end
  end

  context '#update' do
    let(:scholarship) { create(:scholarship, title: 'foo') }

    it 'updates an existing scholarship' do
      patch :update, params: { id: scholarship.id, scholarship: { title: 'bar'} }

      expect(scholarship.reload.title).to eq('bar')
    end
  end

  context '#destroy' do
    let(:scholarship) { create(:scholarship) }

    it 'removes scholarship from the database' do
      delete :destroy, params: { id: scholarship.id }

      expect(Scholarship.all.count).to eq(0)      
    end
  end
end
