module Company
  module UseCases
    class CompanyAdder
      def add(name)
        company_repo.save new_company(name)
      end

      private

      def new_company(name)
        Entities::Company.new(name)
      end

      def company_repo
        Repository.for(:company)
      end
    end
  end
end
