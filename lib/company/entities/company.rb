module Company
  module Entities
    class Company
      attr_accessor :id, :name, :active

      def initialize(name, active=false)
        validate(name)
        @name = name
        @active = active
      end

      def validate(name)
        validate_name_presence(name)
        validate_name_length(name)
      end

      private

        def validate_name_presence(name)
          raise Exceptions::BusinessException.new('Name must be informed')  if  name.nil? || name.empty?
        end

        def validate_name_length(name)
          raise Exceptions::BusinessException.new('Name must be 3 characters long')  if  name.size < 3
        end
    end
  end
end
