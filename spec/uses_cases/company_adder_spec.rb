require 'spec_helper'

describe Company::UseCases::CompanyAdder do
  subject(:adder) { described_class.new }

  describe '.add' do
    subject(:add) { adder.add(name) }

    let(:company_repo) { Company::Repository.for(:company) }
    let(:name) { 'Company Name' }

    it 'adds the company' do
      expect { add }.to change { company_repo.all.size }.by(1)
    end

    it 'validate name is not empty' do
      expect { adder.add("") }.to raise_error(Exceptions::BusinessException)
    end

    it 'validate name is not nil' do
      expect { adder.add(nil) }.to raise_error(Exceptions::BusinessException)
    end

    it 'validate name size' do
      expect { adder.add("ab") }.to raise_error(Exceptions::BusinessException)
    end
  end
  
end
