require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'DogeCoin' do
  describe '.new' do
    it 'should return a DogeCoin::Client' do
      DogeCoin.new.should be_a DogeCoin::Client
    end
  end
end