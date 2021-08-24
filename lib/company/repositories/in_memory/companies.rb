module Company
  module Repositories
    module InMemory
      class Companies
        def initialize
          @companies = {}
          @next_id = 1
        end

        def all
          @companies.values
        end

        def find(id)
          @companies[id]
        end

        def save(company)
          company.id = @next_id
          @companies[@next_id] = company
          @next_id += 1
          company
        end

        def delete_all
          @companies = {}
          @next_id = 1
        end

        def delete(id)
          @companies.delete id
        end
      end
    end
  end
end
