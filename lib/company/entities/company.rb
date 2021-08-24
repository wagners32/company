module Company
  module Entities
    class Company
      attr_accessor :id, :name, :active

      def initialize(name, active=false)
        @name = name
        @active = active
      end
    end
  end
end
