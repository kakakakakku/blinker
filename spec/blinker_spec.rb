require 'spec_helper'

describe Blinker do

  describe 'version' do
    it 'has a version number' do
      expect(Blinker::VERSION).not_to be nil
    end
  end

end
