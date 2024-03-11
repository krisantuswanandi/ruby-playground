module App
  module Version
    def self.included(base)
      base.class_eval do
        desc 'version', 'print the version'

        def version
          puts '1.0.0'
        end
      end
    end
  end
end
