# -*- coding: utf-8 -*-"
require "rubygems"
module AegisNet # :nodoc:
  module StringNormalizr

    refine String do

      COLLATION = {
        'Ä' => 'Ae',
        'Æ' => 'Ae',
        'Å' => 'A',
        'À' => 'A',
        'Á' => 'A',
        'Â' => 'A',
        'Ç' => 'C',
        'È' => "E",
        'É' => "E",
        'Ê' => "E",
        'Ë' => 'E',
        'Í' => 'I',
        'Ì' => 'I',
        'Î' => 'I',
        'Ï' => 'I',
        'Ñ' => 'N',
        'Ö' => 'Oe',
        'Œ' => 'Oe',
        'Ø' => 'O',
        'Ô' => 'O',
        'Ó' => 'O',
        'Ò' => 'O',
        'Ü' => 'Ue',
        'Ú' => 'U',
        'Ù' => 'U',
        'Ÿ' => 'Y',
        'ä' => 'ae',
        'æ' => 'ae',
        'å' => 'a',
        'à' => 'a',
        'á' => 'a',
        'â' => 'a',
        'ç' => 'c',
        'è' => 'e',
        'é' => 'e',
        'ê' => 'e',
        'ë' => 'e',
        'í' => 'i',
        'ì' => 'i',
        'î' => 'i',
        'ï' => 'i',
        'ñ' => 'n',
        'ö' => 'oe',
        'œ' => 'oe',
        'ø' => 'o',
        'ô' => 'o',
        'ó' => 'o',
        'ò' => 'o',
        'ü' => 'ue',
        'ú' => 'u',
        'ù' => 'u',
        'ÿ' => 'y',
        'ß' => 'ss',
      }

      # Returns a new String based on pre-defined normalization rules
      #
      # == Parameters
      # * +options+: optional Hash for normalization customization
      #
      # == Available options
      # * <tt>:downcase</tt> - convert to lower case (true|false, default: false)
      # * <tt>:strip</tt> - trim leading and trailing whitespaces (true|false, default: true)
      # * <tt>:replace_whitespaces</tt> - replace whitespaces within the string with +str+
      #   or set to +false+ to leave whitespaces alone. Makes little
      #   sense w/o :strip => true (str|false, default: "-")
      #
      # == Examples
      #   "This is án exåmple".normalize
      #    => "This-is-an-example
      #
      #   "Tëst string with träiling whitespaces   ".normalize(:replace_whitespaces => false)
      #    => "Test string with traeiling whitespaces"
      #
      def normalize(options = {})
        # shamelessly taken from ActiveSupport::ActiveSupport::Hash::Keys#assert_valid_keys
        valid_keys = [:downcase, :replace_whitespaces, :strip]
        unknown_keys = options.keys - [valid_keys].flatten
        raise(ArgumentError, "Unknown key(s): #{unknown_keys.join(", ")}") unless unknown_keys.empty?

        # Default options
        options = {
          :downcase            => false,
          :strip               => true,
          :replace_whitespaces => "-"
        }.merge(options)

        n_str = AegisNet::StringNormalizr::COLLATION.inject(dup) {|str, (collate_from, collate_to)| str.gsub(collate_from, collate_to)}
        n_str.strip!    if options[:strip]
        n_str.downcase! if options[:downcase]
        n_str.gsub!(/\s+/, options[:replace_whitespaces]) if options[:replace_whitespaces]
        n_str
      end

      # Performs the changes of AegisNet::StringNormalizr#normalize in place,
      # returning the new string.
      #
      # See AegisNet::StringNormalizr#normalize for the optional parameter hash.
      def normalize!(options = {})
        replace normalize(options)
      end
    end
  end
end
