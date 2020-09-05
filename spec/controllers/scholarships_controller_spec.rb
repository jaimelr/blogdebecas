require 'rails_helper'

RSpec.describe ScholarshipsController do
  context '#create' do
    it 'creates a new scholarship' do
      post :create, params: { scholarship: { title: 'foo', description: 'bar', start: Date.today, end: Date.tomorrow, source: 'cat', category: 'intern', benefits: 'none' }}

      expect(Scholarship.all.count).to eq(1)
    end
  end
end
