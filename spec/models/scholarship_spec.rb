require 'rails_helper'

RSpec.describe Scholarship do
  context 'Create a scholarship' do
    it 'can create a new scholarship' do
      expect(Scholarship.create).to be_truthy
    end
  end
end
