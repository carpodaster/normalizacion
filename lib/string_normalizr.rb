module AegisNet
  module StringNormalizr

    def self.included(base)
      base.send(:include, InstanceMethods)
    end


    module InstanceMethods
      def normalize
        self.strip.gsub('ä', 'ae').gsub('ö', 'oe').gsub('ü', 'ue').gsub('Ä', 'Ae').gsub('Ö', 'Oe').gsub('Ü', 'Ue').gsub("ß", "ss")
      end
    end

  end
end

class String
  include AegisNet::StringNormalizr
end
