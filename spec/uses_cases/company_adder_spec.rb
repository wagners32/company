require 'spec_helper'

describe Company::UseCases::CompanyAdder do
  subject(:adder) { described_class.new }

  describe '.add' do
    subject(:add) { adder.add(name) }

    let(:company_repo) { Company::Repository.for(:company) }
    let(:name) { 'Create an app with clean architecture' }

    it 'adds the company' do
      expect { add }.to change { company_repo.all.size }.by(1)
    end
  end
end
