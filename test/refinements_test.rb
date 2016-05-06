require 'test_helper'

describe 'Normalization support using Ruby Refinements' do

  subject { 'Öäß' }

  describe 'with refinement' do
    using AegisNet::StringNormalizr

    it 'refines String' do
      subject.normalize.must_equal 'Oeaess'
    end
  end

  it 'leaves String untouched' do
    begin
      subject.normalize
      assert false, 'subject should not respond to #normalize'
    rescue => e
      # this is what we want to test, actually:
      e.must_be_kind_of NoMethodError
    end
  end
end
