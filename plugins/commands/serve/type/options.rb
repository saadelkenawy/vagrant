require "ostruct"

module VagrantPlugins
  module CommandServe
    class Type
      class Options < Type
        def initialize(value:)
          if !value.is_a?(Hash)
            raise TypeError,
              "Expected type `Hash' but received `#{value.class}'"
          end
          super(value: OpenStruct.new(value).to_h)
        end
      end
    end
  end
end
