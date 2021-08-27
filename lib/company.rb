require "company/version"
require 'company/entities/company'
require 'company/repository'
require 'company/exceptions/business_exception'

Dir[File.dirname(__FILE__) + "/company/use_cases/**/*.rb"].each { |file| require file }

Company::Repository.register :company, Company::Repositories::InMemory::Companies.new

module Company
  class << self
    def add_company(name)
      UseCases::CompanyAdder.new.add(name)
    end
  end
end
